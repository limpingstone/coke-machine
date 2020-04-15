library ieee;
use ieee.std_logic_1164.all;

entity n_bit_adder is 
    port (
        x:      in      std_logic_vector(7 downto 0); 
        y:      in      std_logic_vector(7 downto 0); 
        c_in:   in      std_logic; 
        o:      out     std_logic_vector(7 downto 0); 
        c_out:  out     std_logic
    );
end n_bit_adder;

architecture n_bit_adder_arch of n_bit_adder is
    component full_adder
        port (
            x:      in      std_logic; 
            y:      in      std_logic; 
            c_in:   in      std_logic; 
            sum:    out     std_logic; 
            c_out:  out     std_logic 
        );
    end component;
    signal link: std_logic_vector(8 downto 0);
begin
    link(0) <= c_in; 
    adder_f: for i in 0 to 7 generate
        adder_i: full_adder port map(x(i), y(i), link(i), o(i), link(i + 1));
    end generate;
    c_out <= link(8);
end n_bit_adder_arch;

configuration n_bit_adder_cfg of n_bit_adder is
    for n_bit_adder_arch end for;
end configuration;
