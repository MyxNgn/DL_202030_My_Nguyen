`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2020 11:35:18 AM
// Design Name: 
// Module Name: top_lab11
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


module guessing_game(
    input btnC, btnL, btnR, btnU, btnD, clk,
    input [15:0] sw,
    output [15:0] led
    );
    
    //debouncing the buttons
    wire [3:0] tmp;
    wire [3:0] debounced_buttons;
    debounce #(.N(21)) debounce0(
        .clk(clk),
        .reset(sw),
        .in(btnL),
        .out(debounced_buttons[0]),
        .tick(tmp[0])
        );
    
    debounce #(.N(21)) debounce1(
        .clk(clk),
        .reset(sw),
        .in(btnD),
        .out(debounced_buttons[1]),
        .tick(tmp[1])
        );    
    
    debounce #(.N(21)) debounce2(
        .clk(clk),
        .reset(sw),
        .in(btnR),
        .out(debounced_buttons[2]),
        .tick(tmp[2])
        );
        
    debounce #(.N(21)) debounce3(
        .clk(clk),
        .reset(sw),
        .in(btnU),
        .out(debounced_buttons[3]),
        .tick(tmp[3])
        );
        
    //creating two counter of different size for mux2 element    
    wire counter_in0;
    count #(.N(24)) c0(
        .clk(clk),
        .en(1'b1),
        .rst(btnC),
        .tick(counter_in0)
        );
        
    wire counter_in1;
    count #(.N(23)) c1(
        .clk(clk),
        .en(1'b1),
        .rst(btnC),
        .tick(counter_in1)
        );
    
    //mux2 element sending out signal for guess_FSM    
    wire[1:0] mux_guess;    
    mux mux0(
        .sel(sw[0]), //use to adjust difficulty
        .in1(counter_in1),
        .in0(counter_in0),
        .out(mux_guess)
        );
        
    guess_FSM main(
        .clk(clk),
        .rst(btnC),
        .en(mux_guess),
        .in(debounced_buttons),
        .y(led[3:0]),
        .win(led[15]),
        .lose(led[14])
        );
            
endmodule
