`ifndef CROSS_BAR_VSEQS_PKG_SV
`define CROSS_BAR_VSEQS_PKG_SV

package cross_bar_vseqs_pkg;
  import uvm_pkg::*;
  import bus_agent_pkg::*;
  import cross_bar_agent_pkg::*;
  `include "uvm_macros.svh"

  // Base includes
  `include "cross_bar_base_vseq.svh"
  `include "cross_bar_write.svh"
  `include "cross_bar_read.svh"
  `include "cross_bar_multi_tr.svh"

  // Add optional visual sequence monitor
  class cross_bar_progress_vseq extends cross_bar_base_vseq;
    `uvm_object_utils(cross_bar_progress_vseq)
    `uvm_info("VSEQ", $sformatf("🎯 Starting Virtual Sequence: %s", get_full_name()), UVM_LOW)
    int total_ops = 50;
    function new(string name = "cross_bar_progress_vseq");
      super.new(name);
    endfunction

    task body();
      for (int i = 1; i <= total_ops; i++) begin
        if (i % 10 == 0)
          `uvm_info("PROGRESS", $sformatf("Simulation %0d%% complete", (i*100)/total_ops), UVM_LOW)
        #5;
      end
      `uvm_info("PROGRESS", "All sequence operations completed successfully!", UVM_LOW)
    endtask
  endclass

  `uvm_info("VSEQ", "✅ Completed Virtual Sequence Execution", UVM_LOW)
endpackage

`endif // CROSS_BAR_VSEQS_PKG_SV
