`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2020 12:40:04 PM
// Design Name: 
// Module Name: bcd11
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


module bcd11(
    input [10:0] in,
    output [3:0] ones, tens, hundreds, thousands
    );
    
    assign thousands[3:2] = 2'b00;
    
    wire [3:0] tmpC1;
    
    add3 c1(
        .in({1'b0 , in[10:8]}),
        .out(tmpC1)
    );
    
    wire [3:0] tmpC2;
    add3 c2(
        .in({tmpC1[2:0],in[7]}),
        .out(tmpC2)
    );
    
    wire [3:0] tmpC3;
    add3 c3(
        .in({tmpC2[2:0],in[6]}),
        .out(tmpC3)
    );
    
    wire [3:0] tmpC4;
    add3 c4(
        .in({tmpC3[2:0],in[5]}),
        .out(tmpC4)
    );
    
    wire [3:0] tmpC5;
    add3 c5(
        .in({tmpC4[2:0],in[4]}),
        .out(tmpC5)
    );
    
    wire [3:0] tmpC6;
    add3 c6(
        .in({tmpC5[2:0],in[3]}),
        .out(tmpC6)
    );
    
    wire [3:0] tmpC7;
    add3 c7(
        .in({tmpC6[2:0],in[2]}),
        .out(tmpC7)
    );
    
    add3 c8(
        .in({tmpC7[2:0],in[1]}),
        .out({tens[0], ones[3:1]})
    );
    
    assign ones[0] = in[0];
    
    wire [3:0] tmpC9;
    add3 c9(
        .in({1'b0,tmpC1[3],tmpC2[3],tmpC3[3]}),
        .out(tmpC9)
    );
    
    wire [3:0] tmpC10;
    add3 c10(
        .in({tmpC9[2:0],tmpC4[3]}),
        .out(tmpC10)
    );
    
    wire [3:0] tmpC11;
    add3 c11(
        .in({tmpC10[2:0],tmpC5[3]}),
        .out(tmpC11)
    );
    
    wire [3:0] tmpC12;
    add3 c12(
        .in({tmpC11[2:0],tmpC6[3]}),
        .out(tmpC12)
    );
    
    add3 c13(
        .in({tmpC12[2:0],tmpC7[3]}),
        .out({hundreds[0], tens[3:1]})
    );
    
    wire [3:0] tmpC14;
    add3 c14(
        .in({1'b0,tmpC9[3],tmpC10[3],tmpC9[3]}),
        .out({thousands[1], tmpC14[2:0]})
    );
    
    add3 c15(
        .in({tmpC14[2:0],tmpC12[3]}),
        .out({thousands[0],hundreds[3:1]})
    );
endmodule
