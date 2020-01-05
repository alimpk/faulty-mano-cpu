/* Mano Computer RTL Design
** Fault Tolerance System Design Project 
** Tehran Polytechnic University
** Developed by Ali Mohammadpour
** Jan 2020, fall-2019-semester
*/

`include "basic_params.v"

module cntr (rst, en, clk, t);
	input rst, clk, en;
	output 	[`seqwidth-1:0] t;
	reg 	[`seqwidth-1:0] cntr;
	always @(posedge clk)		
	begin
		if (rst)
			cntr = 0;
		else if (clk)
			if (en)
				cntr = cntr + 1;
	end
	assign t = cntr;
endmodule