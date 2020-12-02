`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2020 04:48:28 PM
// Design Name: 
// Module Name: test_guessing_game
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


module test_guessing_game();
    reg btnC, btnL, btnR, btnU, btnD, clk;
    reg [15:0] sw;
    wire [15:0] led;
    wire [6:0] seg;
    wire [3:0] an;
    wire dp;
    
    guessing_game dut(
        .btnC(btnC),
        .btnL(btnL),
        .btnR(btnR),
        .btnU(btnU),
        .btnD(btnD),
        .clk(clk),
        .sw(sw),
        .led(led),
        .seg(seg),
        .an(an),
        .dp(dp)
        );
    
    //clk and en module
    always begin
        clk = ~clk ; #8;
    end 
    initial begin
        clk = 0; sw = 16'h0001; btnC = 1'b1; btnL = 1'b0; btnD = 1'b0; btnR = 1'b0; btnU = 1'b0;#3; 
        btnC = 0; #15; //set up the initial condition
        btnL = 1'b1; btnD = 1'b0; btnR = 1'b0; btnU = 1'b0; #10;
        btnL = 1'b0; btnD = 1'b0; btnR = 1'b0; btnU = 1'b0; #10;
        btnL = 1'b0; btnD = 1'b1; btnR = 1'b0; btnU = 1'b0; #10;
        btnL = 1'b0; btnD = 1'b0; btnR = 1'b0; btnU = 1'b0; #10;
        btnL = 1'b0; btnD = 1'b0; btnR = 1'b1; btnU = 1'b0; #10;
        btnL = 1'b0; btnD = 1'b0; btnR = 1'b0; btnU = 1'b0; #10;
        btnL = 1'b0; btnD = 1'b0; btnR = 1'b0; btnU = 1'b1; #10;
        btnC = 1'b1; btnL = 1'b0; btnD = 1'b0; btnR = 1'b0; btnU = 1'b0;#10; 
    end
endmodule
