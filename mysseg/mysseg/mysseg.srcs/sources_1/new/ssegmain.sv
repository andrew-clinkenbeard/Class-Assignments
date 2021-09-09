`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2021 02:55:47 PM
// Design Name: 
// Module Name: ssegmain
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


module ssegmain(
    input clk,
    input reset_n,
    output [7:0] sseg,
    output [7:0] an
    );
    
    
    // wires to connect ss# across different modules
    logic [7:0] ss0, ss1, ss2, ss3;
    
    // seven segment driver decleration
    ssegdriver disp_unit(
    .clk(clk),
    .rst(rest_n),
    .ss0(ss0),
    .ss1(ss1),
    .ss2(ss2),
    .ss3(ss3),
    .an(an),
    .sseg(sseg)
    );
    
    
    // patternts module decleration
    Patterns(
    .clk(clk),
    .rst(rest_n),
    .ss0(ss0),
    .ss1(ss1),
    .ss2(ss2),
    .ss3(ss3)
    );
    
endmodule
