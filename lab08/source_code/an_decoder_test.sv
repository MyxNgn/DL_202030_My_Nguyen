`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 12:23:58 PM
// Design Name: 
// Module Name: an_decoder_test
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


module an_decoder_test();
    reg [1:0] in;
    wire [3:0] out;
    
    an_decoder dut (
        .in(in),
        .out(out)
    );
    
    initial begin
        for (int i = 0; i <= 2'b11; i++)begin
            in = i; #10;
        end
        $finish;
    end
endmodule
