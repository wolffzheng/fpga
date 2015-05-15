`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
//
// Company: 
// Engineer: 
// 
// Create Date:    16:17:07 04/15/2015 
// Design Name: 	 xianjun zheng
// Module Name:    hamming code for 4 bit data, 3 bit correction bit
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
// formula is as followed: a6=a6 a5=a5 a4=a4 a3=a3 a2=a6+a5+a4 a1=a6+a5+a3 a0=a6+a4+a3
// a6 a5 a4 a3 are data input, a6-a0 are data output
////////////////////////////////////////////////////////////////////////////////
//
module hamming_code_7_3_generator(
	input [3:0] din,
	output [6:0] data_out	
    );

assign data_out[6]=din[3];
assign data_out[5]=din[2];
assign data_out[4]=din[1];
assign data_out[3]=din[0];
assign data_out[2]=din[3]^din[2]^din[1];
assign data_out[1]=din[3]^din[2]^din[0];
assign data_out[0]=din[3]^din[1]^din[0];

endmodule

