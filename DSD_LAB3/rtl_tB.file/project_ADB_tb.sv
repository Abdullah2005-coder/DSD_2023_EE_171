`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 12:03:37 PM
// Design Name: 
// Module Name: project_ADB_tb
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


module project_ADB_tb();
logic a1, b1, c1;
logic x1, y1;

// Instantiate the full_adder module
project_ADB uut (
    .a(a1),
    .b(b1),
    .c(c1),
    .x(x1),
    .y(y1)
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
    $monitor("x=%b, y=%b, a=%b, b=%b, c=%b", x1, y1, a1, b1, c1);
end

endmodule


