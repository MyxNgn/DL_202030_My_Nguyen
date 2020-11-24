`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 01:45:57 PM
// Design Name: 
// Module Name: board
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


module board(
    input win, lose,
    input clk, rst,
    output [6:0] seg,
    output [3:0] an,
    output dp
    );
    
    localparam [1:0] sdefault = 2'b00, 
                     swin = 2'b01,
                     slose = 2'b10;
    
    reg [1:0] state, state_next;           
    reg [3:0] cwin, close;
    reg [3:0] cwin_next, close_next;
    always_ff @(posedge (clk), posedge (rst))
        if (rst) begin
            state <= sdefault;
            cwin <= 0;
            close <= 0; end
        else begin
            state <= state_next;
            cwin = cwin_next;
            close= close_next; end
            
    always_comb begin
        case (state)
            swin: cwin_next = cwin_next + 1'b1;
            slose: close_next = close_next + 1'b1;
            sdefault: begin
                state_next = state;
                cwin_next = cwin;
                close_next = close;
                end
        endcase
    end
    
    wire [1:0] counter_sseg4;
    counter #(.N(21)) c(
        .clk(clk),
        .en(1'b1),
        .rst(btnC),
        .msb(counter_sseg4)
        );
        
    sseg_new out(
        .win(cwin),
        .lose(close),
        .digit_sel(counter_sseg4), 
        .seg(seg),
        .an(an),
        .dp(dp)  
    );
endmodule
