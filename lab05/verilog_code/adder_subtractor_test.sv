`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2020 11:08:32 AM
// Design Name: 
// Module Name: adder_subtractor_test
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


module adder_subtractor_test();
    reg [1:0] a, b;
    reg mode;
    wire [1:0] sum;
    wire cbout;
    
    adder_subtractor dut(
        .a(a),
        .b(b),
        .mode(mode),
        .cbout(cbout),
        .sum(sum)
        );
    
    //test cases for addition and subtraction
    initial begin
       mode = 0; a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 1; #10;
       mode = 0; a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 0; #10;
       mode = 0; a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 1; #10;
       mode = 0; a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 1; #10;
       mode = 0; a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 1; #10;
       mode = 0; a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 0; #10;
       
       mode = 1; a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 1; #10;
       mode = 1; a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 0; #10;
       mode = 1; a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 1; #10;
       mode = 1; a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 1; #10;
       mode = 1; a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 1; #10;
       mode = 1; a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 0; #10;
       
       $finish;
    end
endmodule
