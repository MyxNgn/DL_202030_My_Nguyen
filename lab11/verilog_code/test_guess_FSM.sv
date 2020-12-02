`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2020 05:15:26 PM
// Design Name: 
// Module Name: test_guess_FSM
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


module test_guess_FSM();
    reg clk, rst, en;
    reg [3:0] in; //buttons
    wire [3:0] y;// led[3:0]
    wire win, lose;// led[15:14] // counter for now many time win/lose
   
    guess_FSM dut(
        .clk(clk),
        .rst(rst),
        .en(en),
        .in(in),
        .y(y),
        .win(win),
        .lose(lose)
        );
   
   //clk and en module
   always begin
        clk = ~clk ; #2;
        en = clk - 1; #1;
   end
   
   initial begin
        clk = 0; rst = 1; in = 4'b0000; #3; 
        rst = 0; #15; //set up the initial condition
        in = 4'b0001; #4; // pressing the first button which loses
        in = 4'b0000; #8; // wait for the next guess
        in = 4'b0001; #4; // pressing the first button which wins
        in = 4'b0000; #8; // wait for the next guess
        in = 4'b0010; #4; // pressing the second button which loses
        in = 4'b0000; #8; // wait for the next guess
        in = 4'b0100; #4; // pressing the third button which loses
        in = 4'b0000; #8; // wait for the next guess
        in = 4'b1000; #4; // pressing the fourth button which loses
        in = 4'b0000; rst = 1; #10; //rest everything
        $finish;
   end 
endmodule
