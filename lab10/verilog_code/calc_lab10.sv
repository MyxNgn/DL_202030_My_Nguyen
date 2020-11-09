`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 11:03:44 AM
// Design Name: 
// Module Name: calc_lab10
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


module calc_lab10(
        input [15:0]sw,
        input btnC, btnD, btnU, clk,
        output [15:0] led,
        output [6:0] seg,
        output [3:0] an,
        output dp
    );
    
    //wire [15:0] tmpLED;
    top_lab9 dut(
        .sw(sw[11:0]),
        .btnU(btnU),
        .btnD(btnD),
        .btnC(btnC),
        .clk(clk),
        .led(led)
        );
    
    wire [15:0] Dout_sseg4;
    wire sign_sseg4;
    show_2c show0(
        .Din(led[15:8]),
        .Dout(Dout_sseg4),
        .sign(sign_sseg4)
        );
        
    wire [1:0] msb_sseg4;
    counter #(.N(21)) c(
        .clk(clk),
        .en(1'b1),
        .rst(btnC),
        .msb(msb_sseg4)
        );
        
    sseg4 main(
        .data(Dout_sseg4),
        .sign(sign_sseg4),
        .hex_dec(sw[15]),
        .digit_sel(msb_sseg4),
        .seg(seg),
        .dp(dp),
        .an(an)
        );
        
endmodule
