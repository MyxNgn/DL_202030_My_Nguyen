`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2020 12:55:18 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
    input clk, btnC,
    output [6:0] seg,
    output [3:0] an,
    output dp  
    );
    
    wire [1:0] counter_sseg4;
    counter #(.N(21)) c(
        .clk(clk),
        .en(1'b1),
        .rst(btC),
        .msb(counter_sseg4)
        );
    
    sseg4 dut(
        .data(15'hAB),
        .hex_dec(1'b0),
        .sign(1'b0),
        .digit_sel(counter_sseg4),
        .seg(seg),
        .an(an),
        .dp(dp)
        ); 
endmodule
