`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2020 12:35:08 PM
// Design Name: 
// Module Name: top_lab9
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


module top_lab9(
        input [11:0] sw,
        input btnU, btnD, btnC, clk,
        output [15:0] led
    );
    //in this circuit the first number inputed is stored as in1
    
    wire [7:0] regist_alu;
    register #(.N(8)) register0(
        .D(sw[7:0]),
        .en(btnD),
        .clk(clk),
        .rst(btnC),
        .Q(regist_alu)
        );
    assign led[7:0] = regist_alu;
    
    wire [7:0] alu_regist;
    alu #(.N(8)) alu0(
        .in0(sw[7:0]),
        .in1(regist_alu),        
        .op(sw[11:8]),
        .out(alu_regist)
        );
    
    register #(.N(8)) register1(
        .D(alu_regist),
        .en(btnU),
        .clk(clk),
        .rst(btnC),
        .Q(led[15:8])
        );
       
endmodule
