interface bus_vif;
  logic clk;
  logic reset;
  logic awvalid;
  logic awready;
  logic [31:0] awaddr;
  logic wvalid;
  logic wready;
  logic [31:0] wdata;
  logic bvalid;
  logic bready;
  logic [1:0] bresp;

  modport master(output awvalid, awaddr, wvalid, wdata, bready,
                input awready, wready, bvalid, bresp);
  modport slave(input awvalid, awaddr, wvalid, wdata, bready,
               output awready, wready, bvalid, bresp);
endinterface