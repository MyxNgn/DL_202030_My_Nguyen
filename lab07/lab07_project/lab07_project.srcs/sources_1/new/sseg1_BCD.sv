`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2020 01:37:57 PM
// Design Name: 
// Module Name: sseg1_BCD
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


module sseg1_BCD(
    input [15:0] sw,
    output [3:0] an, 
    output [6:0] seg,
    output dp 
    );
    
    wire [3:0] bcd_ones, bcd_tens, convert;
    
    bcd11 main(
        .in(sw[10:0]),
        .ones(bcd_ones), 
        .tens(bcd_tens), 
        .hundreds(hundreds), 
        .thousands(thousands)
    );
    
    mux2_4b mux0(
        .in0(bcd_ones),
        .in1(bcd_tens),
        .se1(sw[15]),
        .out(convert)
    );
    
    sseg_decoder decoder0(
        .num(convert),
        .sseg(seg)
    );
    
    assign an[0] = sw[15];
    assign an[1] = ~sw[15];
    assign an[3:2] = 2'b11;
    assign dp = 1'b1;
endmodule
