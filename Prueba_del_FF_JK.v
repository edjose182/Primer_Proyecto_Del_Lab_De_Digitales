`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:37:19 08/04/2015
// Design Name:   FF_JK
// Module Name:   C:/Users/WIN8/Desktop/Lab_Digitales_Proyecto1/Primer_Proyecto_Lab_Digitales/Prueba_del_FF_JK.v
// Project Name:  Primer_Proyecto_Lab_Digitales
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FF_JK
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Prueba_del_FF_JK;

	// Inputs
	reg J;
	reg K;
	reg CLK;

	// Outputs
	wire Q;
	wire Q1;

	// Instantiate the Unit Under Test (UUT)
	FF_JK uut (
		.J(J), 
		.K(K), 
		.CLK(CLK), 
		.Q(Q), 
		.Q1(Q1)
	);

	initial begin
		// Initialize Inputs
		J = 0;
		K = 0;
		CLK = 0;
	forever #50 CLK = ~CLK;
	
	end
	
	initial begin
	
	#50
	J=1'b0;
	K=1'b0;
	
	#50
	J=1'b0;
	K=1'b1;
	
	#50
	J=1'b1;
	K=1'b0;
	
	#50
	J=1'b1;
	K=1'b1;
	
	
	#50
	
	$stop;
	
	end
	
	
		// Wait 100 ns for global reset to finish
		
		// Add stimulus here

      
endmodule

