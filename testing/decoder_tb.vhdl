library ieee;
use ieee.std_logic_1164.all;

entity decoder_tb is 
end decoder_tb;

architecture decoder_tb_arch of decoder_tb is
    component decoder 
        port (
            coins:      in      std_logic_vector(2 downto 0);
            val:        out     std_logic_vector(7 downto 0)
        );
    end component;
    signal coins: std_logic_vector(2 downto 0);
    signal val:   std_logic_vector(7 downto 0);
begin
    decoder_test: decoder port map (coins, val);

    stim_proc: process 
    begin
        wait for 10 ns;

        coins <= "001";
        wait for 10 ns;

        coins <= "100";
        wait for 10 ns;

        coins <= "010";
        wait for 10 ns;

        coins <= "001";
        wait for 10 ns;

        coins <= "100";
        wait for 10 ns;

        assert false report "Reached end of test";
        wait; 

    end process;
end decoder_tb_arch;
