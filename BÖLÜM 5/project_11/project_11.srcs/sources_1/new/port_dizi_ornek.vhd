library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
	
package port_dizi_paket is
	
  type port_dizi is array (3 downto 0) of std_logic_vector(0 to 7);

end port_dizi_paket;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.port_dizi_paket.all;
	
entity port_dizi_ornek is
  Port ( 
    in_giris : in port_dizi;
    out_cikis : out port_dizi
  );
end port_dizi_ornek;
	
architecture Behavioral of port_dizi_ornek is
	
begin
	
  out_cikis <= in_giris;  
	
end Behavioral;