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
    reg [3:0] tmp1, tmp2;
    assign tmp1 = win == 4'hA ? 4'hA : 4'hF; 
    assign tmp2 = lose == 4'hF ? 4'hF : 4'hA;
 
    wire [3:0] mux4_decoder;
    mux4 mux0(
        .sel(digit_sel),
        .in0(lose),
        .in1(tmp1),
        .in2(win),
        .in3(tmp2),
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
