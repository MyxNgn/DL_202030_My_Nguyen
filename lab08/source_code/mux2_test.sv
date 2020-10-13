`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 11:28:35 AM
// Design Name: 
// Module Name: mux2_test
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


module mux2_test
    #(parameter BITS=4)
    ();
    //declare variable
    reg sel;
    reg [BITS-1:0] in0, in1;
    wire [BITS-1:0] out;
    
    //instantiate the module
    mux2 #(.BITS(BITS)) dut(
        .sel(sel),
        .in0(in0),
        .in1(in1),
        .out(out)
    );
    
    //test cases
    initial begin
        in0 <= 4'hF; in1 <= 4'hA; #10; sel <= 0; #10 sel <=1; #10;
        in0 <= 4'h3; in1 <= 4'h5; #10; sel <= 0; #10 sel <=1; #10;
        $finish;
    end
endmodule
