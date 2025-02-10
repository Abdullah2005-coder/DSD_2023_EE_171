`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2025 10:04:54 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();  

    logic a1, b1, c1;
    logic sum1, carry1;

    // Instantiate the full_adder module
    full_adder uut (
        .a(a1),
        .b(b1),
        .c(c1),
        .sum(sum1),
        .carry(carry1)
    );

    initial begin
        // Provide different combinations of the inputs to check validity of the code
        a1 = 0; b1 = 0; c1 = 0; #10;
        a1 = 0; b1 = 0; c1 = 1; #10;
        a1 = 0; b1 = 1; c1 = 0; #10;
        a1 = 0; b1 = 1; c1 = 1; #10;
        a1 = 1; b1 = 0; c1 = 0; #10;
        a1 = 1; b1 = 0; c1 = 1; #10;
        a1 = 1; b1 = 1; c1 = 0; #10;
        a1 = 1; b1 = 1; c1 = 1; #10;

        $stop; // Stop the simulation
    end

    // Monitor signal changes
    initial begin
        /* The following system task will print out the signal values
           every time they change in the Transcript Window */
        $monitor("sum=%b, carry=%b, a=%b, b=%b, c=%b", sum1, carry1, a1, b1, c1);
    end
endmodule
