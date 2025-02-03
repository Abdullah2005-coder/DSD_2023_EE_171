`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2025 09:02:23 PM
// Design Name: 
// Module Name: dsd_project2
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


module dsd_project2( output x,y,
       input a,b,c);
assign not_d= ~c;
assign or_e= a|b;
assign x=(not_d^or_e);
assign nand_f=~(a&b);
assign xor_g=(nand_f^or_e);
assign y=(or_e&xor_g);

endmodule
