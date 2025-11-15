package top_pkg;
  import uvm_pkg::*;
  import bus_agent_pkg::*;  // Import bus_agent_pkg first
  
  // Now include other components that depend on bus_agent_pkg
  `include "env_config.svh"
  `include "env.svh"
  `include "base_test.svh"

  initial begin
	  `uvm_info("TOP_PKG", "✅ top_pkg.sv successfully loaded — All packages compiled.", UVM_LOW)
	end

endpackage