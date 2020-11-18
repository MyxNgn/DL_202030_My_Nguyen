`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 01:45:57 PM
// Design Name: 
// Module Name: board
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


module board(
    input [3:0] win, lose,
    input clk, rst,
    output [6:0] seg,
    output [3:0] an,
    output dp
    );
    
    wire [1:0] counter_sseg4;
    counter #(.N(21)) c(
        .clk(clk),
        .en(1'b1),
        .rst(btnC),
        .msb(counter_sseg4)
        );
        
    sseg_new out(
        .win(win),
        .lose(lose),
        .digit_sel(counter_sseg4), 
        .seg(seg),
        .an(an),
        .dp(dp)  
    );
endmodule
