`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 04:15:11 PM
// Design Name: 
// Module Name: wrap
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

//created to streamline the block diagram
module wrap(
    input clk,
    input [15:0] sw,
    output [3:0] an, 
    output [6:0] seg,
    output dp  
    );
    
    sseg1 main(
        .sw3_0(sw[3:0]),
        .sw7_4(sw[7:4]),
        .sw15(sw[15]),
        .an(an),
        .seg(seg),
        .dp(dp)
        );
endmodule
