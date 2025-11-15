class cross_bar_multi_tr extends cross_bar_base_vseq;
  `uvm_object_utils(cross_bar_multi_tr)

  extern function new(string name = "");
  extern task body();

endclass : cross_bar_multi_tr


function cross_bar_multi_tr::new(string name = "");
  super.new(name);
endfunction : new


task cross_bar_multi_tr::body();
  repeat (20)
    fork
      init_start();
      init_start();
      init_start();
      init_start();
      init_start();
    join
endtask : body
