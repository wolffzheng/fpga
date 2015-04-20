`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:07 04/15/2015 
// Design Name: 	 xianjun zheng
// Module Name:    clk_781250_generator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// input frequency is 50M, divided by 64,so output frequency will be
// 781250Hz. And duty cycle will be 50%.
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clk_781250_generator(
    input CLK_50M,
    input RST,
    output CLK_781250
    );

reg [5:0] counter;
always @(posedge CLK_50M)
	if (!RST)
		counter <= 6'b0;
	else
		counter <= counter + 1'b1;
	
assign CLK_781250=counter[5];

endmodule
