library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
 
entity ALU16_Tb is 
end ALU16_Tb; 
 
architecture Stimulus of ALU16_Tb is    
-- Sinais para ligar às entradas da UUT    
	signal s_op  : std_logic_vector(2 downto 0);    
	signal s_op0 : std_logic_vector(15 downto 0);    
	signal s_op1 : std_logic_vector(15 downto 0); 
-- Sinais para ligar às saídas da UUT    
	signal s_res : std_logic_vector(15 downto 0);    
	signal s_mHi : std_logic_vector(15 downto 0); 
begin    
	uut: entity work.ALU16(Structure)         
		port map(op  => s_op,                  
					op0 => s_op0,                  
					op1 => s_op1,                  
					res => s_res,                  
					mHi => s_mHi); 
 
--Process stim    
	stim_proc : process    
	begin       
		s_op0 <= x"FEDC";       
		s_op1 <= x"0123";       
		s_op  <= "000"; -- +       
		wait for 100 ns;       
		s_op  <= "001"; -- -       
		wait for 100 ns;       
		s_op  <= "010"; -- *       
		s_op1 <= x"89AB";       
		wait for 100 ns;       
		s_op  <= "011"; -- /       
		s_op1 <= x"4567";       
		wait for 100 ns;       
		s_op  <= "100"; -- rem       
		wait for 100 ns;       
		s_op0 <= x"F30C";       
		s_op1 <= x"F50A";       
		s_op  <= "101"; -- and       
		wait for 100 ns;       
		s_op  <= "110"; -- or       
		s_op1 <= x"0FA5";       
		wait for 100 ns;       
		s_op  <= "111"; -- xor       
		wait for 100 ns; 
		
      wait;
	end process;
end Stimulus;