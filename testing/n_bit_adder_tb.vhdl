library ieee;
use ieee.std_logic_1164.all;

entity n_bit_adder_tb is 
end n_bit_adder_tb;


architecture n_bit_adder_tb_arch of n_bit_adder_tb is
    component n_bit_adder
        port (
            x:      in      std_logic_vector(7 downto 0); 
            y:      in      std_logic_vector(7 downto 0); 
            c_in:   in      std_logic; 
            o:      out     std_logic_vector(7 downto 0); 
            c_out:  out     std_logic
        );
    end component;
    signal x, y, o: std_logic_vector(7 downto 0);
    signal c_out: std_logic;
begin
    uut: n_bit_adder port map(x, y, '0', o, c_out);
    process begin

        x <= "00000000";
        y <= "00000000";
        wait for 1 ns;

        x <= "00000010";
        y <= "00000010";
        wait for 1 ns;

        x <= "00000011";
        y <= "00000011";
        wait for 1 ns;

        assert false report("Done");
        wait;
    end process; 
end n_bit_adder_tb_arch;
