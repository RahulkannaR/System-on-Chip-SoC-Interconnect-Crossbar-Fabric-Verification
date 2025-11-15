`ifndef ENV_PKG_SV
`define ENV_PKG_SV

package env_pkg;
  import uvm_pkg::*;
  import bus_agent_pkg::*;
  import cross_bar_agent_pkg::*;
  import cross_bar_vseqs_pkg::*;
  `include "uvm_macros.svh"

  `include "env_config.svh"
  `include "env_scoreboard.svh"
  `include "env_scoreboard_config.svh"

  function void build_phase(uvm_phase phase);
  `uvm_info("ENV", "Building Environment", UVM_LOW)
  super.build_phase(phase);
endfunction

function void connect_phase(uvm_phase phase);
  `uvm_info("ENV", "Environment Connected — Agents linked", UVM_LOW)
endfunction


endpackage

`endif // ENV_PKG_SV
