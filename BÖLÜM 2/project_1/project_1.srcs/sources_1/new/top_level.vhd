library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
	
entity top_level is
  port(
    iCLK : in  std_logic;
    iRST : in  std_logic;
    oCNT : out std_logic_vector(3 downto 0)
  );
end top_level;
	
architecture Behavioral of top_level is
	
begin
	
  process(iCLK, iRST)
    variable counter : std_logic_vector (3 downto 0) := "0000";
  begin
    if(iRST = '1') then
      counter := (others => '0');
      oCNT <= (others => '0');
    elsif(iCLK'event and iCLK = '1') then
      counter := counter + 1;
      oCNT  <= counter;
    end if;
  end process;
end Behavioral;

