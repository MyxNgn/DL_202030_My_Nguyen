`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 11:23:10 AM
// Design Name: 
// Module Name: mux4
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


module mux4(
    input [1:0] sel,
    input [3:0] in0, in1, in2, in3,
    output reg [3:0] out
    );
    
    always @*
        begin
            case (sel)
                2'b00: out = in0;
                2'b01: out = in1;
                2'b10: out = in2;
                default: out = in3;
            endcase 
        end
endmodule
