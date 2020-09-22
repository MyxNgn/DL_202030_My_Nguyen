`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2020 12:22:35 PM
// Design Name: 
// Module Name: half_adder_test
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


module half_adder_test();
    //input -> reg , ouput -> wire
    reg a;
    reg b;
    wire c;
    wire s;

    half_adder dut(
        .a(a), 
        .b(b), 
        .c(c), 
        .s(s)
        );
    initial begin
        a=0; b=0; #10;
        a=1; b=0; #10;
        a=0; b=1; #10;
        a=1; b=1; #10;
        
        $finish;
    end
endmodule
