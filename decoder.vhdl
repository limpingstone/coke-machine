library ieee;
use ieee.std_logic_1164.all;

entity decoder is 
    port (
        coins:      in      std_logic_vector(2 downto 0);
        val:        out     std_logic_vector(7 downto 0)
    );
end decoder;

architecture decoder_arch of decoder is
begin
    process (coins) begin
        if (coins = "001") then
            val <= "00000101";  -- one nickel represents 1
        elsif (coins = "010") then
            val <= "00001010";  -- one dime which is equivalent to two nickels
        elsif (coins = "100") then
            val <= "00011001";  -- one quarter which is equivalent to five nickels
        else
            val <= "00000000"; -- when "000" (no coins are inserted)
        end if;
    end process;
end decoder_arch;

configuration decoder_cfg of decoder is
    for decoder_arch end for;
end configuration;
