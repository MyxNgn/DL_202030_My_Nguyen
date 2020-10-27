`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2020 12:16:23 PM
// Design Name: 
// Module Name: counter_test
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


module counter_test();
    reg clk , en , rst ;
    wire [1:0] msb;
    counter #(.N(4)) counter0(
        .clk(clk),
        .en(en),
        .rst(rst),
        .msb(msb));
    
    always begin
    clk = ~clk ; #5;
    end
    
    initial begin
        clk = 0; en = 0; rst = 0; #10;
        rst = 1; en = 1; #10;
        rst = 0; #200
        $finish ;
    end
endmodule
