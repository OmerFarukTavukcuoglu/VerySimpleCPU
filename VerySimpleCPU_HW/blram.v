`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:22 05/31/2023 
// Design Name: 
// Module Name:    blram 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module blram(clk, i_we, i_addr, i_ram_data_in, o_ram_data_out);



parameter SIZE = 14, DEPTH = 2**14;



input clk;

input i_we;

input [SIZE-1:0] i_addr;

input [31:0] i_ram_data_in;

output reg [31:0] o_ram_data_out;



reg [31:0] memory[0:DEPTH-1];



always @(posedge clk) begin

  o_ram_data_out <= #1 memory[i_addr[SIZE-1:0]];

  if (i_we)

		memory[i_addr[SIZE-1:0]] <= #1 i_ram_data_in;

end 

initial begin

     

      blram.memory[0] = 32'h10028005;

      blram.memory[1] = 32'h1002800a;

      blram.memory[2] = 32'h1002800f;

      blram.memory[3] = 32'hd0190000;

      blram.memory[5] = 32'd30; //ISR begin address @30 end address @32

      blram.memory[30] = 32'h2002800a;

      blram.memory[31] = 32'h10028001;

      blram.memory[32] = 32'hc001812c; //BZJ 6, 300

      blram.memory[100] = 32'h0;

      blram.memory[300] = 32'h0;

      

      



    end

endmodule

