/* Mano Computer RTL Design
** Fault Tolerance System Design Project 
** Tehran Polytechnic University
** Developed by Ali Mohammadpour
** Jan 2020, fall-2019-semester
*/

`include "basic_params.v"

module dff (rst, clk, ld, d, q);
	input rst, clk, ld, d; 
	output q;
	reg temp;
	
	always @ (posedge clk)
		if (rst) 
			temp = 1'b0;
		else if (ld)
    		temp = d;
	
	assign q = temp;
endmodule 