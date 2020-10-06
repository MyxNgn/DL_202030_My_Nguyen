`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2020 11:59:23 AM
// Design Name: 
// Module Name: bcd6_test
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


module bcd6_test();
    reg [5:0] in;
    wire [3:0] tens, ones;

    bcd6 dut(
        .in(in),
        .tens(tens),
        .ones(ones)
    );
    
    initial begin
        for (int i = 0; i < 6'b111111; i++) begin
            in = i; #10;
        end
        $finish;
    end
endmodule
