/* Mano Computer RTL Design
** Fault Tolerance System Design Project 
** Tehran Polytechnic University
** Developed by Ali Mohammadpour
** Jan 2020, fall-2019-semester
*/

`include "basic_params.v"

module mano_core_tb ();
	
	reg clk, rst;
	
	mano_core CORE (.mclk(clk), .mrst(rst));
	
	initial
	begin
		clk = 1'b0;
		rst = 1'b1;
		#120 rst = 1'b0;
	end
	
	always
		#10 clk = ~clk;

endmodule