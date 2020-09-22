`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2020 12:59:42 PM
// Design Name: 
// Module Name: full_adder_test
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


module full_adder_test();
    reg cin;
    reg a;
    reg b;
    wire cout;
    wire s;

    //initilize a full adder for testing
    full_adder dut(
        .a(a),
        .b(b),
        .cin(cin),
        .cout(cout),
        .s(s)
    );
    
    //test cases
    initial begin
        cin = 0; a = 0; b = 0; #10;
        cin = 0; a = 0; b = 1; #10;
        cin = 0; a = 1; b = 0; #10;
        cin = 0; a = 1; b = 1; #10;
        cin = 1; a = 0; b = 0; #10;
        cin = 1; a = 0; b = 1; #10;
        cin = 1; a = 1; b = 0; #10;
        cin = 1; a = 1; b = 1; #10;
        $finish;
    end
endmodule
