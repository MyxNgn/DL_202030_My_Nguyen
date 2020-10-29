`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 11:04:06 AM
// Design Name: 
// Module Name: show_2c
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


module show_2c(
    input [7:0] Din,
    output reg [15:0] Dout,
    output sign
    );
    assign sign = Din[7];
    
    always @*
        begin
            if (sign)
                Dout = ~{{8{1'b1}},Din} + 1'b1;
            else
                Dout = {{8{1'b0}},Din};
        end
endmodule
