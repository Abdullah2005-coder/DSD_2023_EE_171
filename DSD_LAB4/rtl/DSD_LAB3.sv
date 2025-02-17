`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 07:54:53 PM
// Design Name: 
// Module Name: DSD_LAB3
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


module DSD_LAB3(
input logic [1:0] a, b,
output logic red, green, blue
    );

always_comb
    begin
        red = ((~b[0]) & (~b[1])) | ((a[0]) & (a[1])) | ((a[0]) & (~b[1])) | ((a[1]) & (~b[1])) | ((a[1]) & (~b[0]));
        green = ((~a[0]) & (~a[1])) | ((b[0]) & (~a[1])) | ((b[1]) & (b[0])) | ((~a[0]) & (b[1])) | ((b[1]) & (~a[1]));
        blue = (a[1] ^ b[1]) | (a[0] ^ b[0]);
    end
endmodule
