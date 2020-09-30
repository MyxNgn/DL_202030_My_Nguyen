`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2020 01:28:43 PM
// Design Name: 
// Module Name: adder_subtractor
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


module adder_subtractor(
    input [1:0] a, b,
    input mode,
<<<<<<< Updated upstream
    output cbout,
    output [1:0] sum
=======
    output [1:0] sum,
    output cbout
>>>>>>> Stashed changes
    );
    
    wire c1, c2;
    wire [1:0] b_add;
    
    //Invert b input for subtraction
    assign b_add[0] = b[0] ^ mode;
    assign b_add[1] = b[1] ^ mode;
    
    //the first full adder
    full_adder fa0(
        .a(a[0]),
        .b(b_add[0]),
        .cin(mode),
        .cout(c1),
        .s(sum[0])
    );
    
    //the second full adder
    full_adder fa1(
        .a(a[1]),
        .b(b_add[1]),
        .cin(c1),
        .cout(c2),
        .s(sum[1])
    );
<<<<<<< Updated upstream
    
    //Convert carry to borrow when subtracting
    assign cbout =  c2 ^ mode;
=======

    //Convert carry to borrow when subtracting
    assign cbout = c2 ^ mode;
>>>>>>> Stashed changes
endmodule
