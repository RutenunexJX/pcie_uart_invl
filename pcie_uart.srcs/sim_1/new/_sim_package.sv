//////////////////////////////////////////////////////////////////////////
//
// File Name           : _sim_package
// Description         :
// Author              : xqj
// Date                : 2026-04-22 17:24:46
// Version             : 1.0
// Modification History:
// Date                   Author    Version    Description
// 2026-04-22 17:24:46    xqj       1.0        Initial Creation
//
//////////////////////////////////////////////////////////////////////////
import common_package::*;
package sim_package;

// ================================================================================
//                               q
// ================================================================================
`define	SIM_VIVADO
//`define	SIM_MODELSIM
//`define	SIM_VCS

`ifdef  SIM_VIVADO
	`define q   @(posedge clk); #1ns;
`elsif  SIM_MODELSIM
	`define q   @(posedge clk);
`elsif  SIM_VCS
	`define q   @(posedge clk); #1ns;
`else
	`define q   @(posedge clk);
`endif

`define wait_q(N) repeat(N) @(posedge clk);


// ================================================================================
//                               logs
// ================================================================================
`define sim_info(MSG, LVL = SIM_LOW) \
	if ((LVL) <= sim_verbosity) begin \
	    $display("[INFO  @%0t] %s:%0d | %s", $time, `__FILE__, `__LINE__, MSG); \
	    sim_info_count++; \
	end

`define sim_warn(MSG) \
	begin \
	    $display("[WARN  @%0t] %s:%0d | %s", $time, `__FILE__, `__LINE__, MSG); \
	    sim_warning_count++; \
	end

`define sim_err(MSG) \
	begin \
	    $display("[ERROR @%0t] %s:%0d | %s", $time, `__FILE__, `__LINE__, MSG); \
	    sim_error_count++; \
	end

`define sim_fatal(MSG) \
	begin \
	    $display("[FATAL @%0t] %s:%0d | %s", $time, `__FILE__, `__LINE__, MSG); \
	    sim_error_count++; \
	    $fatal(1, MSG); \
	end
// ================================================================================
//                               result check
// ================================================================================
`define sim_check(COND, MSG) \
	if (!(COND)) begin `sim_error(MSG) end

`define sim_check_eq(ACT, EXP, MSG) \
	if ((ACT) !== (EXP)) begin \
	    $display("[ERROR @%0t] %s:%0d | %s | exp=0x%0h act=0x%0h", \
	             $time, `__FILE__, `__LINE__, MSG, EXP, ACT); \
	    sim_error_count++; \
	end

// ================================================================================
//                               constant
// ================================================================================
parameter real P_CLK_PERIOD_NS = 10.0;
parameter int  P_CYCLES = 16;
parameter int  P_GLOBAL_TIMEOUT_NS = 1_000_000;

// ================================================================================
//                               verbosity level
// ================================================================================
typedef enum int {
	SIM_NONE  = 0,
	SIM_LOW   = 1,
	SIM_MED   = 2,
	SIM_HIGH  = 3,
	SIM_DEBUG = 4
} sim_verbosity_e;

sim_verbosity_e sim_verbosity = SIM_MED;

// ================================================================================
//                               global val
// ================================================================================
int sim_error_count   = 0;
int sim_warning_count = 0;
int sim_info_count    = 0;

// ================================================================================
//                               plusarg
// ================================================================================
function automatic int get_plusarg_int(string name, int default_val = 0);
	int v;
	if ($value$plusargs({name, "=%d"}, v)) return v;
	return default_val;
endfunction

function automatic string get_plusarg_str(string name, string default_val = "");
	string v;
	if ($value$plusargs({name, "=%s"}, v)) return v;
	return default_val;
endfunction

function automatic bit get_plusarg_flag(string name);
	return $test$plusargs(name) != 0;
endfunction

// ================================================================================
//                               random seed
// ================================================================================
int sim_seed = 32'hDEAD_BEEF;

function automatic void init_seed();
    sim_seed = get_plusarg_int("SEED", 32'hDEAD_BEEF);
    $srandom(sim_seed); // urandom is not supported in XSIM
    $display("[SIM  ] random seed = 0x%08h", sim_seed);
endfunction

function automatic int urand_range(int lo, int hi);
	return lo + ($urandom() % (hi - lo + 1));
endfunction

// ================================================================================
//                               data proc function
// ================================================================================
function automatic [31:0] bswap32(input [31:0] d);
	return {d[7:0], d[15:8], d[23:16], d[31:24]};
endfunction

function automatic [15:0] bswap16(input [15:0] d);
	return {d[7:0], d[15:8]};
endfunction

function automatic [31:0] bit_reverse32(input [31:0] d);
	for (int i = 0; i < 32; i++) bit_reverse32[i] = d[31 - i];
endfunction

function automatic bit parity_even(input [63:0] d, input int width = 64);
	bit p = 0;
	for (int i = 0; i < width; i++) p ^= d[i];
	return p;
endfunction

// CRC-32 (IEEE 802.3)
function automatic [31:0] crc32_byte(input [31:0] crc, input [7:0] data);
	logic [31:0] c = crc;
	for (int i = 0; i < 8; i++) begin
	    logic fb = c[0] ^ data[i];
	    c = c >> 1;
	    if (fb) c ^= 32'hEDB88320;
	end
	return c;
endfunction

// ================================================================================
//                               wave dump
// ================================================================================
task automatic dump_on(string filename = "wave");
`ifdef SIM_VCS
	$fsdbDumpfile({filename, ".fsdb"});
	$fsdbDumpvars(0, "tb_top");
	$fsdbDumpMDA();
`elsif SIM_MODELSIM
`elsif SIM_VIVADO
`else
	$dumpfile({filename, ".vcd"});
	$dumpvars(0, tb_top);
`endif
endtask

task automatic dump_off();
`ifdef SIM_VCS
	$fsdbDumpoff();
`else
	$dumpoff();
`endif
endtask

// ================================================================================
//                               summary
// ================================================================================
task automatic disp_tt(string title);
	$display("\n==============================================================");
	$display("  %s", title);
	$display("==============================================================\n");
endtask

task automatic disp_div();
	$display("--------------------------------------------------------------");
endtask

task automatic disp_summary();
	$display("\n==============================================================");
	$display("  SIMULATION SUMMARY  @ %0t", $time);
	$display("--------------------------------------------------------------");
	$display("  INFO    : %0d", sim_info_count);
	$display("  WARNING : %0d", sim_warning_count);
	$display("  ERROR   : %0d", sim_error_count);
	if (sim_error_count == 0) $display("  RESULT  : *** PASS ***");
	else                      $display("  RESULT  : *** FAIL ***");
	$display("==============================================================\n");
endtask

task automatic finish_sim(int code = 0);
	disp_summary();
	#100ns;
`ifdef SIM_VCS
	$finish(2);
`else
	$finish;
`endif
endtask

// ================================================================================
//                               global timeout guard
// ================================================================================
task automatic global_timeout_guard(int timeout_ns = P_GLOBAL_TIMEOUT_NS);
	#(timeout_ns * 1ns);
	$display("[FATAL @%0t] global timeout (%0d ns) reached", $time, timeout_ns);
	disp_summary();
	$fatal(1, "GLOBAL TIMEOUT");
endtask

// ================================================================================
//                               mem backdoor
// ================================================================================
task automatic load_hex(string file, ref logic [31:0] mem[]);
	$readmemh(file, mem);
	$display("[SIM  ] loaded hex file: %s (%0d words)", file, mem.size());
endtask

task automatic dump_hex(string file, const ref logic [31:0] mem[]);
	int fd = $fopen(file, "w");
	foreach (mem[i]) $fwrite(fd, "%08h\n", mem[i]);
	$fclose(fd);
	$display("[SIM  ] dumped hex file: %s", file);
endtask
endpackage