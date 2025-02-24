`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 11:52:00 AM
// Design Name: 
// Module Name: project_ABD_2
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


module project_ABD_2(
input [1:0] a,
input [1:0] b,
output logic red,
output logic green,
output logic blue
    );
always @(*) begin
    red = (~b[0] & ~b[1]) | (a[0] & a[1]) | (a[1] & ~b[0]) | (a[0] & ~b[0]) | (a[0] & ~b[1]); // Red
    green = (b[1] & b[0]) | (~a[0] & ~a[1]) | (~a[0] & b[0]) | (~a[1] & b[0]) | (~a[0] & b[1]); // Green
    blue = (~a[1] & b[1]) | (a[1] & ~b[1]) | (a[0] & ~b[0]) | (~a[0] & b[0]); // Blue
end
endmodule

