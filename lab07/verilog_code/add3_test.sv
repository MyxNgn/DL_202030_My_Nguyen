`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2020 11:26:36 AM
// Design Name: 
// Module Name: add3_test
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


module add3_test();
    reg [3:0] in;
    wire [3:0] out;
    
    add3 dut(
        .in(in),
        .out(out)
        );
        
    initial begin
        for (int i = 0; i <4'hF; i++) begin
            in = i; #10;
        end
        $finish;
    end
endmodule
