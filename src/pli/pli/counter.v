module counter(
	clk,
	reset,
	enable,
	count);
input clk;
input reset;
input enable;
output [3:0] count;

reg [3:0] count ;

 always@(posedge clk)
	 if (reset)
	 begin
	 	count <= 4'b0001;
	 end
	 else if (enable)
	 begin
		 count <= count + 4'b0001;
	end
endmodule
