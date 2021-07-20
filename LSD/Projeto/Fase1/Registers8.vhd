library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
 
entity Registers8 is
	generic(nData    : integer := 8;
			  adress   : integer := 3);  --Indice da adress
	port(clk         : in  std_logic;
		  writeEnable : in  std_logic;
		  Reset       : in  std_logic;
		  ReadAdress1 : in  std_logic_vector(adress-1 downto 0);
		  ReadAdress2 : in  std_logic_vector(adress-1 downto 0);
		  WriteAdress : in  std_logic_vector(adress-1 downto 0);
		  WriteData   : in  std_logic_vector(nData-1  downto 0);
		  ReadData1   : out std_logic_vector(nData-1  downto 0);
		  ReadData2   : out std_logic_vector(nData-1  downto 0));
end Registers8;
 
architecture Behavioral of Registers8 is
	signal s_data1  : std_logic_vector(nData-1 downto 0);
	signal s_data2  : std_logic_vector(nData-1 downto 0);
	signal s_indice : std_logic_vector(adress-1 downto 0);
	
	constant NUM_SIGNALS : integer := 8;
	subtype RegData is std_logic_vector(nData-1 downto 0);
	type Registers is array (0 to NUM_SIGNALS-1) of RegData;
	signal s_reg   : Registers := (others => "00000000");
begin 
	process(clk, Reset)    
	begin
		if (Reset = '1') then
			s_reg <= (others => "00000000");
		elsif (rising_edge(clk)) then
			s_reg(0) <= "00000000";
			if (writeEnable = '1') then
				s_reg(to_integer(unsigned(WriteAdress))) <= WriteData; 
			end if;
		end if;    
	end process;
	ReadData1 <= s_reg(to_integer(unsigned(readAdress1)));
	ReadData2 <= s_reg(to_integer(unsigned(readAdress2)));
end Behavioral;