`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2020 11:42:38 AM
// Design Name: 
// Module Name: mux2_4b_test
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


module mux2_4b_test();
    reg [3:0] in0, in1;
    reg se1;
    wire [3:0] out;
    
    mux2_4b dut(
    .in0(in0),
    .in1(in1),
    .se1(se1),
    .out(out)
    );
    
    initial begin
        in0 <= 4'h8; in1 <= 4'h7; se1 <= 0; #10; se1 <=1; #10;
        in0 <= 4'h9; in1 <= 4'h8; se1 <= 0; #10; se1 <=1; #10;
        in0 <= 4'h7; in1 <= 4'h6; se1 <= 0; #10; se1 <=1; #10;
        in0 <= 4'h6; in1 <= 4'h5; se1 <= 0; #10; se1 <=1; #10;
        $finish;
    end
    
    
endmodule
