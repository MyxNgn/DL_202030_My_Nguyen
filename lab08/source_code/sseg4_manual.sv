`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 01:02:27 PM
// Design Name: 
// Module Name: sseg4_asdf
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


module sseg4_manual(
    input clk,
    input [15:0] sw,
    output [3:0] an, 
    output [6:0] seg,
    output dp 
    );
    
    sseg4 main(
        .data({4'b0000,sw[11:0]}),
        .hex_dec(sw[15]),
        .sign(sw[14]),
        .digit_sel(sw[13:12]),
        .seg(seg),
        .an(an),
        .dp(dp)
    );
    
endmodule
