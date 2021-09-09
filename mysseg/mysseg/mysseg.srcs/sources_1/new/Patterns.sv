`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2021 07:45:02 PM
// Design Name: 
// Module Name: Patterns
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


module Patterns(
    input logic clk,
    input logic rst,
    output logic [7:0] ss0,
    output logic [7:0] ss1,
    output logic [7:0] ss2,
    output logic [7:0] ss3
    );
    
    logic [2:0] count;
    parameter TOP_SQUARE = 8'b10011100;
    parameter BOTM_SQUARE = 8'b10100011;
    parameter BLANK = 8'b11111111;
    
    counter# (.N(28), .M(3)) mycounter(
    .clk(clk),
    .rst(rst),
    .count(count)
    );
    
    always_comb 
    case(count)
    0: 
        begin
        ss0=BLANK;
        ss1=BLANK;
        ss2=BLANK;
        ss3=TOP_SQUARE;
        end
    
    1:
        begin
        ss0=BLANK;
        ss1=BLANK;
        ss2=TOP_SQUARE;
        ss3=BLANK;
        end
    
    2:
        begin
        ss0=BLANK;
        ss1=TOP_SQUARE;
        ss2=BLANK;
        ss3=BLANK;
        end
    
    3:
        begin
        ss0=TOP_SQUARE;
        ss1=BLANK;
        ss2=BLANK;
        ss3=BLANK;
        end
    
    4:
        begin
        ss0=BOTM_SQUARE;
        ss1=BLANK;
        ss2=BLANK;
        ss3=BLANK;
        end
    
    5:
        begin
        ss0=BLANK;
        ss1=BOTM_SQUARE;
        ss2=BLANK;
        ss3=BLANK;
        end
    
    6:
        begin
        ss0=BLANK;
        ss1=BLANK;
        ss2=BOTM_SQUARE;
        ss3=BLANK;
        end
    
    7:
        begin
        ss0=BLANK;
        ss1=BLANK;
        ss2=BLANK;
        ss3=BOTM_SQUARE;
        end
    
    endcase
   
endmodule
