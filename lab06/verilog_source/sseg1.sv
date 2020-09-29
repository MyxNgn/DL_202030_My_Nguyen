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
    input [15:0] sw,
    output [3:0] an, 
    output [6:0] seg,
    output dp   
   );
   
   reg [3:0] convert;
   
   mux2_4b mux0(
    .in0(sw[3:0]),
    .in1(sw[7:4]),
    .se1(sw[15]),
    .out(convert)
    );
   
   sseg_decoder decoder0(
    .num(convert),
    .sseg(seg)
    );
    
    assign an[0] = sw[15];
    assign an[1] = ~sw[15];
    
   
endmodule
