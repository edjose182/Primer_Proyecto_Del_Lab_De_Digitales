`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:34 08/02/2015 
// Design Name: 
// Module Name:    Decodificador_FFJK 
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
module Decodificador_FFJK(
input wire Temperatura,Manual,Humo,SobreCarga,EN,CLK,

output wire Extractor_JK,Interrupcion_JK,Bocina_JK,
output wire QN_1,QN_2,QN_3
 );
 
 Decodificador_de_senales Deco_JK(
    .Temperatura(Temperatura), 
    .Manual(Manual), 
    .SobreCarga(SobreCarga), 
    .Humo(Humo), 
    .Bocina(Bocina), 
    .Extractor(Extractor), 
    .Interrupcion(Interrupcion)
    );
	 
FF_JK FF_JK1 (
    .J(Bocina), 
    .K(EN), 
    .CLK(CLK), 
    .Q(Bocina_JK), 
    .Q1(QN_1)
    );	 
	 
FF_JK FF_JK2 (
    .J(Extractor), 
    .K(EN), 
    .CLK(CLK), 
    .Q(Extractor_JK), 
    .Q1(QN_2)
    );	
	 
FF_JK FF_JK3 (
    .J(Interrupcion), 
    .K(EN), 
    .CLK(CLK), 
    .Q(Interrupcion_JK), 
    .Q1(QN_3)
    );	



 


endmodule
