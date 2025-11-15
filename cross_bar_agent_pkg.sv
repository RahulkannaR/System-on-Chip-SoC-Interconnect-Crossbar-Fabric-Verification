`ifndef CROSS_BAR_AGENT_PKG_SV
`define CROSS_BAR_AGENT_PKG_SV

package cross_bar_agent_pkg;
  import uvm_pkg::*;
  import bus_agent_pkg::*;
  `include "uvm_macros.svh"

  `include "cross_bar_seq_item.svh"
  `include "cross_bar2bus_seq.svh"
  `include "bus2cross_bar_monitor.svh"
  `include "cross_bar_layering.svh"
  `include "cross_bar_arbitrage.svh"

function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  `uvm_info("CROSS_BAR_AGENT", "Crossbar Agent Build Phase Started", UVM_LOW)
endfunction

function void connect_phase(uvm_phase phase);
  `uvm_info("CROSS_BAR_AGENT", "Crossbar Agent Connection Done", UVM_LOW)
endfunction


endpackage

`endif // CROSS_BAR_AGENT_PKG_SV
