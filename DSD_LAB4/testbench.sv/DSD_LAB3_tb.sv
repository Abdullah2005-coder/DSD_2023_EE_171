`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 07:58:45 PM
// Design Name: 
// Module Name: DSD_LAB3_tb
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


module DSD_LAB3_tb;
    logic [1:0] a;
    logic [1:0] b;
    logic red;
    logic green;
    logic blue; 

  DSD_LAB3 uut (
        .a(a),
        .b(b),
        .red(red),
        .green(green),
        .blue(blue) 
    );

    initial begin
        a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 0; #10;
        a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 1; #10;
        a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 0; #10;
        a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 1; #10;
        a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 0; #10;
        a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 1; #10;
        a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 0; #10;
        a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 1; #10;
        a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 0; #10;
        a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 1; #10;
        a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 0; #10;
        a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 1; #10;
        a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 0; #10;
        a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 1; #10;
        a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 0; #10;
        a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 1; #10;
        $stop;
    end
endmodule


