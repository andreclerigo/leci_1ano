library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Afixa is
	port(	pisca			: in std_logic;
			uni			: in std_logic_vector(3 downto 0);
			dez			: in std_logic_vector(3 downto 0);
			visor_uni	: out std_logic_vector(6 downto 0);
			visor_dez	: out std_logic_vector(6 downto 0);
			visor_cen	: out std_logic_vector(6 downto 0);
			visor_mil	: out std_logic_vector(6 downto 0);
			lotado		: out std_logic); -- activo-baixo
end Afixa;

architecture Structural of Afixa is
-- letras da palavra 'FULL'
constant letraF  : std_logic_vector(6 downto 0) := "0001110";
constant letraU  : std_logic_vector(6 downto 0) := "1000001";
constant letraL  : std_logic_vector(6 downto 0) := "1000111";
constant apagado : std_logic_vector(6 downto 0) := "1111111";
signal uni_7seg, dez_7seg, mask : std_logic_vector(6 downto 0);
signal s_cheio : std_logic;

begin
unidades : entity work.Bin7SegDecoder(Behavioral)
	port map (	binInput => uni,
					decOut_n => uni_7seg);	
dezenas : entity work.Bin7SegDecoder(Behavioral)
	port map (	binInput => dez,
					decOut_n => dez_7seg);

mask <= (others => pisca); -- 7 bits intermitentes '1'<->'0'				
visor_uni <=	(letraL or mask) when s_cheio='1' else
					uni_7seg;
visor_dez <=	(letraL or mask) when s_cheio='1' else
					dez_7seg;
visor_cen <=	(letraU or mask) when s_cheio='1' else
					apagado;					
visor_mil <=	(letraF or mask) when s_cheio='1' else
					apagado;

s_cheio <= 	'1' when ((uni="0000") and (dez="0000")) else
				'0';
lotado <= not (s_cheio); -- activo-baixo
end Structural;