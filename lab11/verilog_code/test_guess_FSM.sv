`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 05:15:26 PM
// Design Name: 
// Module Name: test_guess_FSM
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


module test_guess_FSM();
    reg clk, rst, en;
    reg [3:0] in; //buttons
    wire [3:0] y;// led[3:0]
    wire win, lose;// led[15:14] // counter for now many time win/lose
   
    guess_FSM dut(
        .clk(clk),
        .rst(rst),
        .in(in),
        .y(y),
        .win(win),
        .lose(lose)
        );
    
endmodule
