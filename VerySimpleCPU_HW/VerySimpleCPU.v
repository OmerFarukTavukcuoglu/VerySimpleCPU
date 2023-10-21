`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:31 05/31/2023 
// Design Name: 
// Module Name:    VerySimpleCPU 
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
module VerySimpleCPU (
  input clk, rst, interrupt,
  input [31:0] data_fromRAM,
  output reg wrEn,
  output reg [31:0] data_toRAM,
  output reg [13:0] addr_toRAM
);
  reg [2:0] st, stN;
  reg [13:0] PC, PCN;
  reg [31:0] IW, IWN, A, AN;
  reg intr, intrN, isr, isrN;
  
  always @(posedge clk) begin
    if (rst) begin
      st <= 3'b000;
      PC <= 14'd0;
      A <= 32'd0;
      IW <= 32'd0;
      intr <= 1'b0;
      isr <= 1'b0;
    end else begin
      st <= stN;
      PC <= PCN;
      A <= AN;
      IW <= IWN;
      intr <= intrN;
      isr <= isrN;
    end
  end

  always @* begin
    stN = 3'bxxx;
    addr_toRAM = 14'd0;
    data_toRAM = 32'd0;
    AN = 32'd0;
    PCN = PC;
    wrEn = 1'b0;
    IWN = IW;
    intrN = (interrupt && intr == 1'b0) ? 1'b1 : intr;
    isrN = isr;
    
    case (st)
      3'b000: begin
        addr_toRAM = PC; // fetch instruction
        stN = 3'b001;
      end
      3'b001: begin
        IWN = data_fromRAM;
        if ((data_fromRAM[31:30] == 2'b00) || (data_fromRAM[31:29] == 3'b110)) begin // ADD, ADDi, NAND, NANDi, BZJi, BZJ instruction
          addr_toRAM = data_fromRAM[27:14]; // read opA
          stN = 3'b010;
        end
      end
      3'b010: begin
        if ((IW[31:28] == 4'b1100) || (IW[31:28] == 4'b0000) || (IW[31:28] == 4'b0010)) begin // ADD and NAND, BZJ instruction
          AN = data_fromRAM;
          addr_toRAM = IW[13:0];
          stN = 3'b011;
        end
        if (IW[31:28] == 4'b0001) begin // ADDi instruction
          data_toRAM = data_fromRAM + IW[13:0]; // *A<-(A) + B
          addr_toRAM = IW[27:14];
          wrEn = 1'b1;
          PCN = PC + 14'd1;
          if (intr == 1'b1 && isr != 1'b1)  // if there is an interrupt, do the ISR
            stN = 3'h4;
          else
            stN = 3'h0;
        end
        if (IW[31:28] == 4'b0011) begin // NANDi instruction
          data_toRAM = ~(data_fromRAM & IW[13:0]); // *A<-~((A) & B)
          addr_toRAM = IW[27:14];
          wrEn = 1'b1;
          PCN = PC + 14'd1;
          if (intr == 1'b1 && isr != 1'b1)  // if there is an interrupt, do the ISR
            stN = 3'h4;
          else
            stN = 3'h0;
        end
        if (IW[31:28] == 4'b1101) begin // BZJi instruction
          PCN = data_fromRAM[13:0] + IW[13:0]; // PC<-(A) + B
          if (intr == 1'b1 && isr != 1'b1)  // if there is an interrupt, do the ISR
            stN = 3'h4;
          else
            stN = 3'h0;
        end
      end
      3'b011: begin
        if (IW[31:28] == 4'b0000) begin // ADD instruction
          addr_toRAM = IW[27:14];
          data_toRAM = A + data_fromRAM;
          wrEn = 1'b1; // write back the result
          PCN = PC + 14'd1;
          if (intr == 1'b1 && isr != 1'b1)  // if there is an interrupt, do the ISR
            stN = 3'h4;
          else
            stN = 3'h0;
        end
        if (IW[31:28] == 4'b0010) begin // NAND instruction
          addr_toRAM = IW[27:14];
          data_toRAM = ~(A & data_fromRAM);
          wrEn = 1'b1; // write back the result
          PCN = PC + 14'd1;
          if (intr == 1'b1 && isr != 1'b1)  // if there is an interrupt, do the ISR
            stN = 3'h4;
          else
            stN = 3'h0;
        end
        if (IW[31:28] == 4'b1100) begin // BZJ instruction
          if (data_fromRAM == 32'd0) 
            PCN = A[13:0];
          else
            PCN = PC + 14'd1;
          if (IW[27:14] == 14'h0006) begin // Return from interrupt
            intrN = 1'b0;
            isrN = 1'b0;
          end
          if (intr == 1'b1 && isr != 1'b1)  // if there is an interrupt, do the ISR
            stN = 3'h4;
          else
            stN = 3'h0;
        end
      end
      3'b100: begin // New state to get the ISR address from @5
        wrEn = 1'b0;
        addr_toRAM = 32'h5; // Get the ISR address
        stN = 3'h5;
        isrN = 1'b1;
      end
      3'b101: begin // New state to store the next instruction address @6
        wrEn = 1'b1;
        data_toRAM = PC;
        addr_toRAM = 32'h6; // Store next PC value @6
        PCN = data_fromRAM[13:0];
        stN = 3'h0;
      end
		
/* 
		MACHINE CODE FOR FLOOR DIVISION
0000 0000 0001 ; CP R1, dividend
0001 0001 0000 0010 ; CP R2, divisor
0011 0011 0000 0000 ; CPi R3, 0
0011 0100 0000 0000 ; CPi R4, 0
0110 0110 0000 0001 ; SRL R6, R1, 15
1010 0110 0000 1001 ; BZJi CheckDividendPositive
1000 0001 1111 1111 ; NOT R1, R1
0000 0001 0000 0001 ; ADDi R1, R1, 1
0110 0110 0000 0010 ; SRL R6, R2, 15
1010 0110 0000 0111 ; BZJi CheckDivisorPositive
1000 0010 1111 1111 ; NOT R2, R2
0000 0010 0000 0001 ; ADDi R2, R2, 1
0001 0101 0010 0000 ; SUB R5, R1, R2
0100 0101 0000 0000 ; BLT R5, 0, EndLoop
0000 0011 0000 0001 ; ADDi R3, R3, 1
0001 0001 0101 0000 ; ADD R1, R5, 0
0000 0100 0000 0001 ; ADDi R4, R4, 1
0100 0000 1111 1011 ; BZJ Loop
0001 0001 0011 0000 ; CP R1, R3
0110 0110 0000 0001 ; SRL R6, R3, 15
1010 0110 0000 0100 ; BZJi End
1000 0011 1111 1111 ; NOT R3, R3
0000 0011 0000 0001 ; ADDi R3, R3, 1
0000 0000 0000 0000 ;*/
		
		
				
      // Machine code for floor division
      3'b110: begin
        addr_toRAM = PC;
        stN = 3'h111;
      end
      3'b111: begin
        IWN = data_fromRAM;
        if ((data_fromRAM[31:28] == 4'b0010) && (data_fromRAM[27:14] == 14'd1)) begin
          addr_toRAM = 32'd0;
          stN = 3'h1000;
        end
        if (data_fromRAM[31:28] == 4'b0001) begin
          addr_toRAM = 32'd0;
          stN = 3'h1001;
        end
        if ((data_fromRAM[31:30] == 2'b00) || (data_fromRAM[31:29] == 3'b110))  begin // ADD, ADDi, NAND, NANDi, BZJi, BZJ instruction
          addr_toRAM = data_fromRAM[27:14]; // read opA
          stN = 3'b010; 
        end
      end
      // Modified states for floor division
      3'b1000: begin 
        A = A - data_fromRAM;
        PCN = PC + 14'd1;
        addr_toRAM = 32'd0;
        stN = 3'h1010;
      end
      3'b1001: begin 
        A = A + data_fromRAM;
        PCN = PC + 14'd1;
        addr_toRAM = 32'd0;
        stN = 3'h1010;
      end
      3'b1010: begin 
        addr_toRAM = 32'd0;
        data_toRAM = A;
        wrEn = 1'b1;
        PCN = PC + 14'd1;
        if (intr == 1'b1 && isr != 1'b1)  
          stN = 3'h4;
        else
          stN = 3'h0;
      end
    endcase
  end
endmodule

