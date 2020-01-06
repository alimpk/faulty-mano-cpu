#include "acc_user.h"
	 
handle clk ;
handle reset ;
handle enable ;
handle dut_count ;
void counter ();
	 
void counter_monitor() {
  acc_initialize();
  clk = acc_handle_tfarg(1);
  reset = acc_handle_tfarg(2);
  enable = acc_handle_tfarg(3);
  dut_count = acc_handle_tfarg(4);
  acc_vcl_add(clk,counter,null,vcl_verilog_logic);
  acc_close();
}
	
void counter () {
  io_printf("Clock changed state\n");
}
