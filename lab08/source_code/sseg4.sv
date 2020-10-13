`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 12:29:42 PM
// Design Name: 
// Module Name: sseg4
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


module sseg4(
    input [15:0] data,
    input [1:0] digit_sel,
    input hex_dec, sign, 
    output [6:0] seg,
    output [3:0] an,
    output dp  
    );
    
    assign dp = 1'b1;
    
    an_decoder an_decoder_0(
        .in(digit_sel),
        .out(an)
    );
    
    wire sel_mux2_7;
    assign sel_mux2_7 = sign & ~an[3]; 
    
    wire [15:0] bcd_mux2;
    bcd11 bcd11_0(
        .in(data[10:0]),
        .ones(bcd_mux2[3:0]),
        .tens(bcd_mux2[7:4]),
        .hundreds(bcd_mux2[11:8]),
        .thousands(bcd_mux2[15:12])
    );
    
    wire [15:0] mux2_mux4;
    mux2 #(.BITS(16)) mux2_0(
        .sel(hex_dec),
        .in0(bcd_mux2),
        .in1(data[15:0]),
        .out(mux2_mux4)
    );
    
    wire [4:0] mux4_decoder;
    mux4 mux4_0(
        .sel(digit_sel),
        .in0(mux2_mux4[3:0]),
        .in1(mux2_mux4[7:4]),
        .in2(mux2_mux4[11:8]),
        .in3(mux2_mux4[15:12]),
        .out(mux4_decoder)
    );
    
    wire[6:0] decoder_mux2;
    sseg_decoder decoder0(
        .num(mux4_decoder),
        .sseg(decoder_mux2)
    );
    
    mux2 #(.BITS(7)) mux2_1(
        .sel(sel_mux2_7),
        .in0(decoder_mux2),
        .in1(7'b0111111),
        .out(seg)
    );
    
    
endmodule
