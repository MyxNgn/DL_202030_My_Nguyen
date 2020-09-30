`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2020 12:49:50 PM
// Design Name: 
// Module Name: sseg1
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


module sseg1(
    input [3:0] sw3_0, sw7_4,
    input sw15,
    output [3:0] an, 
    output [6:0] seg,
    output dp   
   );
   
   wire [3:0] convert;
   
   mux2_4b mux0(
    .in0(sw3_0),
    .in1(sw7_4),
    .se1(sw15),
    .out(convert)
    );
   
   sseg_decoder decoder0(
    .num(convert),
    .sseg(seg)
    );
    
    assign an[0] = sw15;
    assign an[1] = ~sw15;
    assign an[3:2] = 2'b11;
    assign dp = 1'b1;
    
endmodule
