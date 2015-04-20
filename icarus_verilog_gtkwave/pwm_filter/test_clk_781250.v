`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:28:46 04/15/2015
// Design Name:   clk_781250_generator
// Module Name:   /home/jun/logibone/logiboneprojects/pwm_filter/test_clk_781250.v
// Project Name:  pwm_filter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_781250_generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_clk_781250;

	// Inputs
	reg CLK_50M;

	reg RST;
	// Outputs
	wire CLK_781250;


	// Instantiate the Unit Under Test (UUT)
	clk_781250_generator uut (
		.CLK_50M(CLK_50M),
		.RST(RST), 
		.CLK_781250(CLK_781250)
	);
	
	always
	begin
		CLK_50M=1'b0;
		#10;
		CLK_50M=1'b1;
		#10;
	end

	initial begin
		$dumpfile("clk_781250.vcd");
		$dumpvars(CLK_781250);
	end

	initial begin
		#128000;$finish;
	end

	initial begin
		#1 RST=1'b1;
		#1 RST=1'b0;
		#10 RST=1'b1;
	end
      
endmodule

