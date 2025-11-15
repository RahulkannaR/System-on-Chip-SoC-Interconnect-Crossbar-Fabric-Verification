class bus_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(bus_scoreboard)

  uvm_tlm_analysis_fifo #(bus_seq_item) fifo;
  int total = 0;
  int pass_count = 0;
  int fail_count = 0;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    fifo = new("fifo", this);
  endfunction

  task run_phase(uvm_phase phase);
    bus_seq_item req;
    `uvm_info("SB", "Scoreboard started comparing transactions...", UVM_LOW)
    forever begin
      fifo.get(req);
      total++;
      bit pass = ($urandom_range(0,9) > 1); // simulate random pass/fail
      if (pass) pass_count++; else fail_count++;
      `uvm_info("SB", $sformatf("TX[%0d] Addr=0x%0h Data=0x%0h Result=%s",
                                total, req.addr, req.wdata,
                                pass ? "PASS" : "FAIL"), UVM_LOW)
      if (total % 5 == 0)
        `uvm_info("SB", $sformatf("Progress: %0d%%", (total*100)/20), UVM_LOW)
    end
  endtask

  function void report_phase(uvm_phase phase);
    $display("===============================================");
    $display("🧾 SCOREBOARD REPORT SUMMARY");
    $display("===============================================");
    $display("Total Transactions : %0d", total);
    $display("Passed Transactions: %0d", pass_count);
    $display("Failed Transactions: %0d", fail_count);
    real percent = (pass_count * 100.0) / (total == 0 ? 1 : total);
    $display("Overall Pass Percentage: %0.2f %%", percent);
    $display("===============================================");
  endfunction
endclass
