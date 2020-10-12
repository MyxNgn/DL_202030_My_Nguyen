`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2020 11:37:30 AM
// Design Name: 
// Module Name: bcd6
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


module bcd6(
    input [5:0] in,
    output [3:0] tens,ones
    );
    wire [2:0] tmp0;
    
    assign tens[3] = 1'b0;
    add3 c1(
        .in({1'b0 , in[5:3]}),
        .out({tens[2] , tmp0[2:0]})
    );
    
    wire [2:0] tmp1;
    add3 c2(
        .in({tmp0[2:0] , in[2]}),
        .out({tens[1] , tmp1[2:0]})
    );
    
    add3 c3(
        .in({tmp1[2:0] , in[1]}),
        .out({tens[0],ones[3:1]})
    );
    assign ones[0] = in[0];
    
endmodule
