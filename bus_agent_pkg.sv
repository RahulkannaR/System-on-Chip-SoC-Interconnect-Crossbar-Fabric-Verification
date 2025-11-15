package bus_agent_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  // ---- Common typedefs ----
  typedef virtual bus_if bus_vif;
  typedef enum bit {ACK=0, SEND=1} driver_mode_e;

  // ---- Includes ----
  `include "bus_seq_item.svh"
  `include "bus_config.svh"
  `include "bus_sequencer.svh"
  `include "bus_base_seq.svh"
  `include "bus_transaction.svh"
  `include "bus_driver.svh"
  `include "bus_monitor.svh"
  `include "bus_agent.svh"
  `include "bus_scoreboard.svh"
  `include "bus_write.svh"
  `include "bus_read.svh"
  `include "bus_ack.svh"
  `include "bus_idle.svh"
 
  function void build_phase(uvm_phase phase);
	  super.build_phase(phase);
  	`uvm_info("BUS_AGENT", "Building Bus Agent...", UVM_LOW)
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info("BUS_AGENT", "Bus Agent Connected Successfully", UVM_LOW)
  endfunction


endpackage
