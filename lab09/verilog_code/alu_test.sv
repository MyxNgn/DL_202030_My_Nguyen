`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2020 12:20:52 PM
// Design Name: 
// Module Name: alu_test
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


module alu_test();
    reg [8-1:0] in0;
    reg [8-1:0] in1;
    reg [3:0] op;
    wire [8-1:0] out;
    
    alu #(.N(8)) alu(
        .in0(in0),
        .in1(in1),
        .op(op),
        .out(out)
        );
        
   initial begin
        in0 = 8'hA; in1 = 8'hB;
        for (int i = 0; i < 6; i++)begin
            op = i; #10;
        end
        $finish;
   end 
endmodule
