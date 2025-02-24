`timescale 1ns / 1ps
// Design Name: 
// Module Name: project_ABD_2tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 12:04:56 PM
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module project_ABD_2tb;
    logic [1:0] a;
    logic [1:0] b;
    logic r;
    logic g;
    logic bl;

    project_ABD_2 uut (
        .a(a),
        .b(b),
        .red(r),
        .green(g),
        .blue(bl)
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
