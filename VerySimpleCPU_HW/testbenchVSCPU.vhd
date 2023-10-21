--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:58 05/31/2023
-- Design Name:   
-- Module Name:   C:/.Xilinx/VerySimpleCPU_HW/testbenchVSCPU.vhd
-- Project Name:  VerySimpleCPU_HW
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VerySimpleCPU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbenchVSCPU IS
END testbenchVSCPU;
 
ARCHITECTURE behavior OF testbenchVSCPU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VerySimpleCPU
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         interrupt : IN  std_logic;
         data_fromRAM : IN  std_logic_vector(31 downto 0);
         wrEn : OUT  std_logic;
         data_toRAM : OUT  std_logic_vector(31 downto 0);
         addr_toRAM : OUT  std_logic_vector(13 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal interrupt : std_logic := '0';
   signal data_fromRAM : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal wrEn : std_logic;
   signal data_toRAM : std_logic_vector(31 downto 0);
   signal addr_toRAM : std_logic_vector(13 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VerySimpleCPU PORT MAP (
          clk => clk,
          rst => rst,
          interrupt => interrupt,
          data_fromRAM => data_fromRAM,
          wrEn => wrEn,
          data_toRAM => data_toRAM,
          addr_toRAM => addr_toRAM
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
