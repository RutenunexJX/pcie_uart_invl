class axi_master_driver #(parameter int ADDR_W=32, DATA_W=32, ID_W=4);

virtual axi_full_if #(.ADDR_W(ADDR_W), .DATA_W(DATA_W), .ID_W(ID_W)) vif;

function new(virtual axi_full_if #(.ADDR_W(ADDR_W), .DATA_W(DATA_W), .ID_W(ID_W)) vif);
	this.vif = vif;
endfunction

task reset();
	vif.awvalid <= 0;
	vif.wvalid  <= 0;
	vif.wlast   <= 0;
	vif.bready  <= 0;
	vif.arvalid <= 0;
	vif.rready  <= 0;
	@(posedge vif.clk);
endtask

task write_single(input [ADDR_W-1:0] addr, input [DATA_W-1:0] data);
	@(posedge vif.clk);
	vif.awid    <= 0;
	vif.awaddr  <= addr;
	vif.awlen   <= 0;           // 单笔
	vif.awsize  <=($clog2(DATA_W/8));
	vif.awburst <= 2'b01;//common_package::E_BURST_INCR;
	vif.awvalid <= 1;

	do @(posedge vif.clk); while (!vif.awready);
	vif.awvalid <= 0;

	vif.wdata  <= data;
	vif.wstrb  <= '1;
	vif.wlast  <= 1;
	vif.wvalid <= 1;
	do @(posedge vif.clk); while (!vif.wready);
	vif.wvalid <= 0;
	vif.wlast  <= 0;

	vif.bready <= 1;
	do @(posedge vif.clk); while (!vif.bvalid);
	vif.bready <= 0;
endtask

task read_single(input [ADDR_W-1:0] addr, output [DATA_W-1:0] data);
    @(posedge vif.clk);
    vif.arid    <= 0;
    vif.araddr  <= addr;
    vif.arlen   <= 0;
    vif.arsize  <= $clog2(DATA_W/8);
    vif.arburst <= 2'b01;//common_package::E_BURST_INCR;
    vif.arvalid <= 1;
    do @(posedge vif.clk); while (!vif.arready);
    vif.arvalid <= 0;

    vif.rready <= 1;
    do @(posedge vif.clk); while (!vif.rvalid);
    data = vif.rdata;
    vif.rready <= 0;
endtask

task write_burst(
    input [ADDR_W-1:0]       addr,
    input [DATA_W-1:0]       data[],      // 动态数组，长度即 burst len
    input [2:0]          size = $clog2(DATA_W/8),
    input [1:0]          burst_type = common_package::E_BURST_INCR,
    input [ID_W-1:0]     id = 0
);
    int len = data.size() - 1;   // AXI 的 len 是"拍数-1"

    @(posedge vif.clk);
    vif.awid    <= id;
    vif.awaddr  <= addr;
    vif.awlen   <= len;
    vif.awsize  <= size;
    vif.awburst <= burst_type;
    vif.awvalid <= 1;
    do @(posedge vif.clk); while (!vif.awready);
    vif.awvalid <= 0;

    foreach (data[i]) begin
        vif.wdata  <= data[i];
        vif.wstrb  <= '1;
        vif.wlast  <= (i == data.size()-1);
        vif.wvalid <= 1;
        do @(posedge vif.clk); while (!vif.wready);
    end
    vif.wvalid <= 0;
    vif.wlast  <= 0;

    vif.bready <= 1;
    do @(posedge vif.clk); while (!vif.bvalid);
    vif.bready <= 0;
endtask

task read_burst(
    input  [ADDR_W-1:0]   addr,
    input  int        beats,       // 拍数
    output [DATA_W-1:0]   data[],
    input  [2:0]      size = $clog2(DATA_W/8),
    input  [ID_W-1:0] id = 0
);
    data = new[beats];

    @(posedge vif.clk);
    vif.arid    <= id;
    vif.araddr  <= addr;
    vif.arlen   <= beats - 1;
    vif.arsize  <= size;
    vif.arburst <= common_package::E_BURST_INCR;
    vif.arvalid <= 1;
    do @(posedge vif.clk); while (!vif.arready);
    vif.arvalid <= 0;

    vif.rready <= 1;
    for (int i = 0; i < beats; i++) begin
        do @(posedge vif.clk); while (!vif.rvalid);
        data[i] = vif.rdata;
        if (i == beats-1) begin
            assert(vif.rlast) else $error("RLAST missing at last beat");
        end
    end
    vif.rready <= 0;
endtask
endclass