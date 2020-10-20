`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2020 11:19:49 AM
// Design Name: 
// Module Name: register
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


module register #( parameter N =1)(
    input clk , rst , en ,
    input [N -1:0] D,
    output reg [N -1:0] Q
    );
    always @( posedge clk , posedge rst)
    begin
        if (rst ==1)
            Q <= 0;
        else if (en ==1)
            Q <= D;
    end
endmodule
