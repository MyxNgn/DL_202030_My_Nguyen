`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University
// Engineer: Gil Hutchins
// 
// Create Date: 03/14/2020 06:30:22 PM
// Design Name: 
// Module Name: disp
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


module disp (
    input clk,
    input [6:0] seg,
    input dp,
    input [3:0] an,
    output reg [15:0] digit [4]
    );
    
    int i;
    
    initial
        for (i = 0; i < 4; i++) begin
            digit[i] = "  ";
        end
            
    always @(posedge clk)
        for (i = 0; i < 4; i++) begin
            if (!an[i]) begin
                case (seg)
                    7'b1000000: digit[i][15:8] = "0";
                    7'b1111001: digit[i][15:8] = "1";
                    7'b0100100: digit[i][15:8] = "2";
                    7'b0110000: digit[i][15:8] = "3";
                    7'b0011001: digit[i][15:8] = "4";
                    7'b0010010: digit[i][15:8] = "5";
                    7'b0000010: digit[i][15:8] = "6";
                    7'b1111000: digit[i][15:8] = "7";
                    7'b0000000: digit[i][15:8] = "8";
                    7'b0010000: digit[i][15:8] = "9";
                    7'b0001000: digit[i][15:8] = "A";
                    7'b0000011: digit[i][15:8] = "B";
                    7'b1000110: digit[i][15:8] = "C";
                    7'b0100001: digit[i][15:8] = "D";
                    7'b0000110: digit[i][15:8] = "E";
                    7'b0001110: digit[i][15:8] = "F";
                    7'b0111111: digit[i][15:8] = "-";
                    default: digit[i][15:8] = "?";
                endcase
                if (dp) digit[i][7:0] = " ";
                else digit[i][7:0] = ".";
            end
            else digit[i] <= "  ";
        end
endmodule
