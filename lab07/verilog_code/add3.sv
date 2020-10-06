`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2020 11:11:57 AM
// Design Name: 
// Module Name: add3
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


module add3(
    input [3:0] in,
    output [3:0] out
    );
    
    assign out = in > 4'b0100 ? in + 4'b0011 : in;
endmodule
