/* Mano Computer RTL Design
** Fault Tolerance System Design Project 
** Tehran Polytechnic University
** Developed by Ali Mohammadpour
** Jan 2020, fall-2019-semester
*/

`include "basic_params.v"

module mem4096x16 (clk, addr, rd, wr, din, dout);
	input 	clk;
	input 	rd;
	input 	wr;
	input	[`addrwidth-1:0] addr;
	input	[`datawidth-1:0] din ;
	output	[`datawidth-1:0] dout;
	reg  	[`datawidth-1:0] dout;

	reg [`datawidth-1:0] bank [0:`memcap-1];
	
	always @(addr)
		dout = bank[addr];
		
    always @(posedge clk)
		if (wr == 1)
		bank[addr] = din;
	
	initial
		$readmemb("../data/program.asm", bank);

 
endmodule
