`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2020 11:23:14 AM
// Design Name: 
// Module Name: mux2_4b
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux2_4b(
    input [3:0] in0, in1,
    input se1,
    output [3:0] out
    );
    
    assign out = se1 ?  in1 : in0;
endmodule
