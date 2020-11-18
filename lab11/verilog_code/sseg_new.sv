`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 02:22:09 PM
// Design Name: 
// Module Name: sseg_new
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


module sseg_new(
    input [3:0] win, lose,
    input [1:0] digit_sel,
    output [6:0] seg,
    output [3:0] an,
    output dp
    );
    
    assign dp = 1'b1;
    
    wire [3:0] mux4_decoder;
    mux4 mux0(
        .sel(digit_sel),
        .in0(lose),
        .in1(4'hF),
        .in2(win),
        .in3(4'hA),
        .out(mux4_decoder)
        );
    
    sseg_decoder decoder0(
        .num(mux4_decoder),
        .sseg(seg)
        );    
        
    an_decoder adecoder(
        .in(digit_sel),
        .out(an)
        );
endmodule
