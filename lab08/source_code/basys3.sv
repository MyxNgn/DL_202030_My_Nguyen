`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University
// Engineer: Gil Hutchins
// 
// Create Date: 03/19/2020 03:31:54 PM
// Design Name: 
// Module Name: basys3
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


module basys3 ();
    reg [15:0] sw;
    wire [6:0] seg;
    wire dp;
    wire [3:0] an;
    wire [15:0] digit [4];
    reg clk;
    
    sseg4_manual sseg4_manual_inst (.sw(sw), .seg(seg), .dp(dp), .an(an));
    disp disp_inst (.clk(clk), .seg(seg), .dp(dp), .an(an), .digit(digit));
    
    always
        begin
            #5;
            clk = ~clk;
            end
            
    initial
        begin
            $display("    +--------- Digit 3 (? = incorrect segment values)");
            $display("    |+-------- Decimal point");
            $display("    ||+------- Digit 2 (? = incorrect segment values)");
            $display("    |||+------ Decimal point");
            $display("    ||||+----- Digit 1 (? = incorrect segment values)");
            $display("    |||||+---- Decimal point");
            $display("    ||||||+--- Digit 0 (? = incorrect segment values)");
            $display("    |||||||+-- Decimal point");
            $display("    ||||||||");
            clk = 0;
            sw = 0;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[15] = 1;
            sw[3:0] = 4'b1100;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[15] = 0;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[12] = 1;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[13:12] = 2'b10;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[7] = 1;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[13:12] = 2'b01;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[13:12] = 2'b00;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[13:12] = 2'b11;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[10] = 1;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[15] = 1;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[14] = 1;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[13:12] = 2'b10;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[13:12] = 2'b01;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            sw[13:12] = 2'b00;
            #10;
            $display("--> %s%s%s%s", digit[3], digit[2], digit[1], digit[0]);
            $finish;
        end
endmodule
