`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:39 08/01/2015 
// Design Name: 
// Module Name:    Decodificador_de_senales 
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
module Decodificador_de_senales(

input wire Temperatura, Manual, SobreCarga, Humo,

output wire Bocina, Extractor, Interrupcion
);



or or_1(Extractor,Humo,Manual);

or or_2(Bocina,Extractor,Temperatura);

or or_3(Interrupcion,SobreCarga,Manual);

endmodule
