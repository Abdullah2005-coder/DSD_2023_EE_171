`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 02:52:17 PM
// Design Name: 
// Module Name: project_ADB
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


module project_ADB(output x,y,
       input a,b,c);
assign not_d= ~c;
assign or_e= a|b;
assign x=(not_d^or_e);
assign nand_f=~(a&b);
assign xor_g=(nand_f^or_e);
assign y=(or_e&xor_g);

endmodule
