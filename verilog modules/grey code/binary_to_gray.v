`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
//
// Company: 
// Engineer: 
// 
// Create Date:    16:17:07 05/27/2015 
// Design Name: 	 xianjun zheng
// Module Name:    binary to grey module
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
////////////////////////////////////////////////////////////////////////////////
//
module binary_to_gray #(parameter PTR=8)
	(input [PTR:0] binary_value,
	output [PTR:0] gray_value);

generate
	genvar i;
	for(i=0;i<(PTR);i=i+1)
	begin
		assign gray_value[i]=binary_value[i]^binary_value[i+1];
	end
endgenerate 

assign gray_value[PTR]=binary_value[PTR];

endmodule
