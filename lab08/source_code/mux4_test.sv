`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 12:05:20 PM
// Design Name: 
// Module Name: mux4_test
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


module mux4_test ();
    reg [1:0] sel;
    reg [3:0] in0, in1, in2, in3;
    wire [3:0] out;
       
    mux4 dut(
        .sel(sel),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .out(out)
    );
    
    initial begin
        in0 <= 4'hA; in1 <=4'hB; in2 <=4'hC; in3 <=4'hD; #10; sel = 2'b00; #10; sel = 2'b01; #10 sel = 2'b10; #10; sel = 2'b11; #10;
        in0 <= 4'h0; in1 <=4'h1; in2 <=4'h2; in3 <=4'h3; #10; sel = 2'b00; #10; sel = 2'b01; #10 sel = 2'b10; #10; sel = 2'b11; #10;
        $finish;
    end
    
endmodule
