`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2020 11:24:04 AM
// Design Name: 
// Module Name: count
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


module count #(parameter N=20)(
    input clk, rst, en,
    output tick
    );
    reg [N-1:0] Qnext, Qreg;
    always @(posedge clk, posedge rst)//non-blocking for the clk
        begin
            if(rst)
                Qreg <= 0;
            else 
                Qreg <= Qnext;
        end
        
     always @*//blocking for non clk
        begin
            if (en)
                Qnext = Qreg+1;
            else
                Qnext = Qreg;
        end
          
     assign tick = &Qreg;
endmodule
