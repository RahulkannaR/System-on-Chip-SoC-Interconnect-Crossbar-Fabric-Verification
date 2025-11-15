`ifndef TEST_PKG_SV
`define TEST_PKG_SV

package test_pkg;
  import uvm_pkg::*;
  import env_pkg::*;
  `include "uvm_macros.svh"

  `include "base_test.svh"
  `include "test_write.svh"
  `include "test_read.svh"
  `include "test_transaction.svh"
  `include "test_multi_tr.svh"
  `include "test_arbitrage.svh"

  task run_phase(uvm_phase phase);
  `uvm_info("TEST", "🧠 Starting Base Test Run Phase", UVM_LOW)
  phase.raise_objection(this);
  #200;
  phase.drop_objection(this);
  `uvm_info("TEST", "✅ Base Test Completed", UVM_LOW)
endtask


endpackage

`endif // TEST_PKG_SV
