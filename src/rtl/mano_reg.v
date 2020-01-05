/* Mano Computer RTL Design
** Fault Tolerance System Design Project 
** Tehran Polytechnic University
** Developed by Ali Mohammadpour
** Jan 2020, fall-2019-semester
*/

`include "basic_params.v"

module register #(parameter width = 8)(rst, clk, ld, inc, d, q);
	input rst, clk, ld, inc;
	input [width-1:0] d; 
	output [width-1:0]q;
	
	reg [width-1:0] temp;
	
	always @ ( posedge clk)
		if (rst) 
			temp = 0;
		else if (inc)
    		temp = temp + 1;
		else if (ld)
    		temp = d;
	
	assign q  = temp;
endmodule 