`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:46:45 08/04/2015
// Design Name:   Decodificador_de_senales
// Module Name:   C:/Users/WIN8/Desktop/Lab_Digitales_Proyecto1/Primer_Proyecto_Lab_Digitales/Prueba_del_Decodificador.v
// Project Name:  Primer_Proyecto_Lab_Digitales
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decodificador_de_senales
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Prueba_del_Decodificador;

	// Inputs
	reg Temperatura;
	reg Manual;
	reg SobreCarga;
	reg Humo;

	// Outputs
	wire Bocina;
	wire Extractor;
	wire Interrupcion;

	// Instantiate the Unit Under Test (UUT)
	Decodificador_de_senales uut (
		.Temperatura(Temperatura), 
		.Manual(Manual), 
		.SobreCarga(SobreCarga), 
		.Humo(Humo), 
		.Bocina(Bocina), 
		.Extractor(Extractor), 
		.Interrupcion(Interrupcion)
	);

	initial begin
		// Initialize Inputs

		Temperatura = 1'b0;
		Manual = 1'b0;
		SobreCarga =1'b0;
		Humo =1'b0;

		end
		
		initial begin
		#50
		
		Temperatura = 1'b1;
		Manual = 1'b0;
		SobreCarga = 1'b0;
		Humo = 1'b0;
		
	
		#50
		Temperatura = 1'b1;
		Manual = 1'b1;
		SobreCarga = 1'b1;
		Humo = 1'b1;
	
		#50
		Temperatura = 1'b1;
		Manual = 1'b0;
		SobreCarga = 1'b0;
		Humo = 1'b1;
		
		
		#50
		Temperatura = 1'b1;
		Manual = 1'b1;
		SobreCarga = 1'b0;
		Humo = 1'b0;

		#50
		
		$stop;
		
		end
		
		
		
		// Wait 100 ns for global reset to finish
        
		// Add stimulus here


      
endmodule

