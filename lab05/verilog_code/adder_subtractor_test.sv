`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2020 11:08:32 AM
// Design Name: 
// Module Name: adder_subtractor_test
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


module adder_subtractor_test();
    wire [1:0] a, b;
    wire mode;
    reg [1:0] sum;
    reg cbout;
    
    adder_subtractor(
    .a(a),
    .b(b),
    .mode(mode),
    .sum(sum),
    .cbout(cbout)
    );
    
    //test cases
    initial begin
       mode = 0, a[1] = 0, a[0] = 0, b[1] = 0, b[0] = 1
        $finish;
    end
endmodule
