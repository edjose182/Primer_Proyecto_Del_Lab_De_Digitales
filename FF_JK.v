`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:39:19 08/02/2015 
// Design Name: 
// Module Name:    FF_JK 
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
//
//////////////////////////////////////////////////////////////////////////////////
module FF_JK(
input wire J,K,CLK,
output reg Q,Q1
 );
 
 always@(negedge CLK)
	begin
	case({J,K})
		
			{1'b0,1'b0}:
			
				begin
				Q=1'b0;
				Q1=~Q;
				end
				
			{1'b0,1'b1}:
			
				begin
				Q=1'b0;
				Q1=1'b1;
				end
	
			{1'b1,1'b0}:
			
				begin
				Q=1'b0;
				Q1=1'b0;
				
				end
				
			{1'b1,1'b1}:
			
				begin
				Q=1'b1;
				Q1=~Q;
				
				end
			
			endcase
			
		end
	

endmodule
