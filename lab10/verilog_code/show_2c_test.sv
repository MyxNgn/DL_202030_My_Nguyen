`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 11:48:03 AM
// Design Name: 
// Module Name: show_2c_test
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


module show_2c_test();
    reg [7:0] Din;
    wire [15:0] Dout;
    wire sign;
    
    show_2c dut(
        .Din(Din),
        .Dout(Dout),
        .sign(sign)
        );
       
    initial begin
        Din = 8'b01111011; #10;
        Din = 8'b11111011; #10;
        Din = 8'b01101011; #10;
        Din = 8'b11101011; #10;
        Din = 8'b01100011; #10;
        Din = 8'b11100011; #10;
        Din = 8'b00010100; #10;
        Din = 8'b01111010; #10;
        $finish; 
    end
endmodule
