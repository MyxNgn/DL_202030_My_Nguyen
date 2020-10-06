`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2020 01:28:17 PM
// Design Name: 
// Module Name: bcd11_test
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


module bcd11_test();
    reg [10:0] in;
    wire [3:0] ones, tens, hundreds, thousands;

    bcd11 dut(
        .in(in),
        .ones(ones), 
        .tens(tens), 
        .hundreds(hundreds), 
        .thousands(thousands)
    );
    
    initial begin
        for (int i = 11'b11110000000; i < 11'b11111111111; i++) begin
            in = i; #10;
        end
        $finish;
    end
endmodule
