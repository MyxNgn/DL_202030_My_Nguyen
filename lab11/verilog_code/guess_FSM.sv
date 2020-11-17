`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 01:12:24 PM
// Design Name: 
// Module Name: guess_FSM
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


module guess_FSM(
    input clk, rst, en,
    input [3:0]in, //buttons
    output reg [3:0] y,// led[3:0]
    output reg win, lose// led[15:14]
    );
    localparam [2:0] 
        s0 = 4'b000,
        s1 = 4'b001,
        s2 = 4'b011,
        s3 = 4'b010,
        swin  = 4'b110,
        slose = 4'b111; 
        
    // internal signals
    reg [2:0] state, state_next;
    
    // state memory (register)
    always @(posedge clk, posedge rst, posedge en)
        if (rst)
            state <= s0;
        else if (en)
            state <= state_next;
    
    // combined next-state and output logic
    always @* begin
      // default behavior
      state_next = state;
      //lose = 1'b0;
      //win = 1'b0;
      
      case(state)
         //s0 state
         s0: begin
            y = 4'b0001;
            if (in == y)
                state_next = swin;
            else if (in == 4'b0000)
                state_next = s1;
            else
                state_next = slose;            
         end
         //s1 state
         s1: begin
            y = 4'b0010;
            if (in == y)
                state_next = swin;
            else if (in == 4'b0000)
                state_next = s2;
            else
                state_next = slose;  
         end
         //s2 state
         s2: begin
            y = 4'b0100;     
            if (in == y)
                state_next = swin;
            else if (in == 4'b0000)
                state_next = s3;
            else
                state_next = slose;  
         end
         //s3 state
         s3: begin
            y = 4'b1000;    
            if (in == y)
                state_next = swin;
            else if (in == 4'b0000)
                state_next = s0;
            else
                state_next = slose;
         end
         //win state
         swin: begin
            win = 1'b1;    
            if (in == 4'b0000)
                state_next = s0;
            else
                begin
                state_next = swin;
                //lose = 1'b0;
                end
         end
         //lose state
         slose: begin
            lose = 1'b1;    
            if (in == 4'b0000)
                state_next = s0;
            else
                begin
                state_next = slose;
                //win = 1'b0;
                end
         end
      endcase     
   end
endmodule
