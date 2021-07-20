library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
 
entity Registers8_Tb is
end Registers8_Tb;
 
architecture Stimulus of Registers8_Tb is
	signal s_clk         : std_logic;
	signal s_writeEnable : std_logic;
	signal s_reset       : std_logic;
	signal s_readAdress1 : std_logic_vector(2 downto 0);
	signal s_readAdress2 : std_logic_vector(2 downto 0);
	signal s_writeAdress : std_logic_vector(2 downto 0);
	signal s_writeData   : std_logic_vector(7 downto 0);
	signal s_readData1   : std_logic_vector(7 downto 0);
	signal s_readData2   : std_logic_vector(7 downto 0);
begin 
	registers: entity work.Registers8(Behavioral)
		port map(clk 			=> s_clk,
					WriteEnable => s_writeEnable,
					Reset 		=> s_reset,      
					ReadAdress1 => s_readAdress1,
					ReadAdress2 => s_readAdress2,
					WriteAdress => s_writeAdress,
					WriteData 	=> s_writeData,  
					ReadData1 	=> s_readData1,  
					ReadData2 	=> s_readData2);
					
	clk_proc: process
	begin
		s_clk <= '0';
		wait for 50 ns;
		s_clk <= '1';
		wait for 50 ns;
	end process;
	
	stim_proc: process
	begin
		s_reset <= '1';
		wait for 100 ns;
		
		s_reset <= '0';
		s_readAdress1 <= "001";
		wait for 100 ns;
		
		s_readAdress1 <= "010";
		wait for 100 ns;
		
		s_writeEnable <= '1';
		s_writeAdress <= "001";
		s_writeData   <= "00001111";
		wait for 100 ns;
		
		s_writeAdress <= "010";
		s_writeData   <= "11110000";
		wait for 100 ns;
		
		s_readAdress1 <= "001";
		s_readAdress2 <= "010";
		wait for 200 ns;
		
		s_reset <= '1';
		wait for 100 ns;
	end process;
end Stimulus;