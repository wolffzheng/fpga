`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:28:46 04/15/2015
// Design Name:   
// Module Name:   
// Project Name:  
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: 
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_galois_lfsr_16bit_generator;

	// Inputs
	reg CLK_50M;

	//Reset
	reg RST_n;

	reg disabled;

	// Outputs
	wire [15:0] data_out;

	galois_lfsr_16bit_generator galois (
			.CLK(CLK_50M),
			.rstb(RST_n),
			.disable_(disabled),
			.data_out(data_out));
	
	always
	begin
		CLK_50M=1'b0;
		#10;
		CLK_50M=1'b1;
		#10;
	end

	initial begin
		$dumpfile("galois.vcd");
		$dumpvars(data_out);
	end

	initial begin 
		#1 RST_n=1'b1;
		#1 RST_n=1'b0;
		#10 RST_n=1'b1;
	end

	initial begin
		
		
		#1310800;$finish;
	end
      
endmodule

