`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2020 11:33:19 AM
// Design Name: 
// Module Name: counter
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


module counter #(parameter N=1)(
    input clk, rst, en,
    output [1:0] msb
    );
    reg [N-1:0] Qnext, Qreg;
    always @(posedge clk, posedge rst)
        begin
            if(rst)
                Qreg <= 0;
            else 
                Qreg <= Qnext;
        end
        
     always @*
        begin
            if (en)
                Qnext = Qreg+1;
            else
                Qnext = Qreg;
        end
          
     assign msb = Qreg[N-1:N-2];
endmodule
