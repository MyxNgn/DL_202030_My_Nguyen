`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2020 12:49:05 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a,
    input b,
    input cin,
    output cout,
    output s
    );
    
    //internal signals
    wire c1, c2, s1;
    
    //first half adder
    half_adder ha0( 
        .a(a),
        .b(b),
        .c(c1),
        .s(s1)
    );
    
    //second half adder
    half_adder ha1( 
        .a(s1),
        .b(cin),
        .c(c2),
        .s(s)
    );
    
    //the last xor gate connecting cin and the second carry
    assign cout = c1 ^ c2;
    
endmodule
