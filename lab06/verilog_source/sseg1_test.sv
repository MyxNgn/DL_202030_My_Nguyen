`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 04:23:53 PM
// Design Name: 
// Module Name: sseg1_test
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


module sseg1_test();
    reg [15:0] sw;
    wire [3:0] an; 
    wire [6:0] seg;
    wire dp;
    
    wrap dut(
        .sw(sw),
        .an(an),
        .seg(seg),
        .dp(dp)
        );

    initial begin
        //initalize
        sw = 16'h0000 ; #10;
        // Test case 1
        sw [7:0] = 8'hAB;
        sw [15] = 1'b0; #10;
        sw [15] = 1'b1; #10;
        
        // Test case 2
        sw [7:0] = 8'hCD;
        sw [15] = 1'b0; #10;
        sw [15] = 1'b1; #10;
        
        // Test case 3
        sw [7:0] = 8'hEF;
        sw [15] = 1'b0; #10;
        sw [15] = 1'b1; #10;
        
        // Test case 4
        sw [7:0] = 8'h12;
        sw [15] = 1'b0; #10;
        sw [15] = 1'b1; #10;
        
        // Test case 5
        sw [7:0] = 8'h34;
        sw [15] = 1'b0; #10;
        sw [15] = 1'b1; #10;
        
        // Test case 6
        sw [7:0] = 8'h56;
        sw [15] = 1'b0; #10;
        sw [15] = 1'b1; #10;
        
        // Test case 7
        sw [7:0] = 8'h78;
        sw [15] = 1'b0; #10;
        sw [15] = 1'b1; #10;
        
        // Test case 8
        sw [7:0] = 8'h9A;
        sw [15] = 1'b0; #10;
        sw [15] = 1'b1; #10;
        
        // Test case 9
        sw [7:0] = 8'h33;
        sw [15] = 1'b0; #10;
        sw [15] = 1'b1; #10;
        $finish;
    end 
endmodule
