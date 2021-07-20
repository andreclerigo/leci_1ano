library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; 
 
entity ALU8 is
	generic(N : integer := 8);
	port(op0  : in  std_logic_vector(N-1 downto 0);          
		  op1  : in  std_logic_vector(N-1 downto 0);
		  ALUOp: in  std_logic_vector(3   downto 0);
		  res  : out std_logic_vector(N-1 downto 0)); 
end ALU8; 
 
architecture Behavioral of ALU8 is

	signal s_mResUnsigned, s_mResSigned   : std_logic_vector((2*N)-1 downto 0);
	signal s_sign_op0, s_unsigned_op0     : std_logic_vector(N-1 downto 0);
	signal s_sign_op1, s_unsigned_op1     : std_logic_vector(N-1 downto 0);
	signal s_shAmount                     : natural range 0 to (2**N)-1;       -- O segundo operando pode representar valores inteiros de 0 a 15
 
begin 
  
  s_mResUnsigned  <= std_logic_vector(unsigned(op0) * unsigned(op1));
  s_unsigned_op0  <= std_logic_vector(unsigned(op0));
  s_unsigned_op1  <= std_logic_vector(unsigned(op1));
  s_mResSigned    <= std_logic_vector(signed(op0) * signed(op1));
  s_sign_op0      <= std_logic_vector(signed(op0));
  s_sign_op1      <= std_logic_vector(signed(op1));
  s_shAmount      <= to_integer(unsigned(op1));

  process(ALUOp, op0, op1, s_mResUnsigned, s_mResSigned, s_sign_op0, s_sign_op1, s_unsigned_op0, s_unsigned_op1, s_shAmount)   
  begin     
		case ALUOp is       
			when "0000" =>         
				res <= std_logic_vector(unsigned(op0) + unsigned(op1)); --ADD
 
			when "0001" =>         
				res <= std_logic_vector(unsigned(op0) - unsigned(op1)); --SUB
				
			when "0010" =>         
				res <= op0 and op1; --AND
 
			when "0011" =>         
				res <= op0 or  op1; --OR
				
			when "0100" =>         
				res <= op0 xor op1; --XOR
				
			when "0101" =>         
				res <= op0 nor op1; --NOR
				
			when "0110" =>         
				res <= s_mResUnsigned(N-1 downto 0); --MUU (LESS SIGNIFICANT PART)
			
			when "0111" =>         
				res <= s_mResSigned(N-1 downto 0); --MUS (LESS SIGNIFICANT PART)
			
			when "1000" =>   
				res <= std_logic_vector(SHIFT_LEFT(unsigned(op0), s_shAmount));  --SHIFT LEFT BY ShAmount
				
			when "1001" =>  
				res <= std_logic_vector(SHIFT_RIGHT(unsigned(op0), s_shAmount)); --SHIFT RIGHT BY ShAmount
				
			when "1010" =>  
				res <= std_logic_vector(SHIFT_RIGHT(signed(op0), s_shAmount));  --SHIFT RIGHT BY ShAmount (Keeps the signal)
			
			when "1011" =>  
				if(s_unsigned_op0 = s_unsigned_op1) then  --Equal
					res <= "00000001";
				else
					res <= "00000000";
				end if;
			
			when "1100" => 
				if (s_sign_op0 < s_sign_op1) then  --op0<op1
					res <= "00000001";
				else
					res <= "00000000";
				end if;
			when "1101" => 
				if (s_unsigned_op0 < s_unsigned_op1) then  --op0<op1
					res <= "00000001";
				else
					res <= "00000000";
				end if;
			when "1110" => 
				if (s_sign_op0 > s_sign_op1) then --op0>op1
					res <= "00000001";
				else
					res <= "00000000";
				end if;
			when others => 
				if (s_unsigned_op0 > s_unsigned_op1) then  --op0>op1
					res <= "00000001";
				else
					res <= "00000000";
				end if;    
		end case;    
	end process; 
end Behavioral;