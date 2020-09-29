`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2020 12:21:32 PM
// Design Name: 
// Module Name: sseg_decoder_test
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


module sseg_decoder_test();
    reg [3:0] num;
    wire [6:0] sseg;
    
    integer i;
    
    sseg_decoder dut(
    .num(num),
    .sseg(sseg)
    );
    
    initial begin
        for (i=0; i<=8'hF; i=i+1) begin
            num = i; #10;
        end
        $finish;
    end
endmodule
