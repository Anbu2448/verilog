`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 09:45:29
// Design Name: 
// Module Name: fullsubtractor
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


module fullsubtractor(diff,borrow,a,b,c_in);
input a,b,c_in;
output diff,borrow;
    xor x1(w1,a,b);
    xor x2(diff,w1,c_in);
    and x3(w2,s1,b);
    and x4(w3,s2,c_in);
    or x5(borrow,w3,w2);
 endmodule
