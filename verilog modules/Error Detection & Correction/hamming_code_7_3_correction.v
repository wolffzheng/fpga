`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
//
// Company: 
// Engineer: 
// 
// Create Date:    16:17:07 04/15/2015 
// Design Name: 	 xianjun zheng
// Module Name:    hamming code correction for 4 bit data, 3 bit correction bit
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
// formula is as followed: din[6:3] information bit,din[2:0] additional bit
////////////////////////////////////////////////////////////////////////////////
//
module hamming_code_7_3_generator(
	input [6:0] din,
	output [3:0] data_out	
    );

assign s1=din[6]^din[5]^din[4]^din[2];
assign s2=din[6]^din[5]^din[3]^din[1];
assign s3=din[6]^din[4]^din[3]^din[0];
wire [3:0] out;
wire [7:0] mask;

assign mask=8'd1<<{s1,s2,s3};
wire [6:0] temp;
assign temp=mask[7:1] ^ din[6:0];
assign out=temp[6:3]; 

//always @(*) begin
//	case {s1,s2,s3}
//	3'd0: out={din[6],din[5],din[4],din[3]};
//	3'd1: out={din[6],din[5],din[4],din[3]};	
//	3'd2: out={din[6],din[5],din[4],din[3]};	
//	3'd3: out={din[6],din[5],din[4],din[3]};	
//	3'd4: out={din[6],din[5],din[4],!din[3]};	
//	3'd5: out={din[6],din[5],!din[4],din[3]};	
//	3'd6: out={din[6],!din[5],din[4],din[3]};	
//	3'd7: out={!din[6],din[5],din[4],din[3]};	
//end
//assign data_out=out;

endmodule

