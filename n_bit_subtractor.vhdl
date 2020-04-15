library ieee;
use ieee.std_logic_1164.all;

entity n_bit_subtractor is 
    port (
        x:      in      std_logic_vector(7 downto 0); 
        y:      in      std_logic_vector(7 downto 0); 
        b_in:   in      std_logic;
        o:      out     std_logic_vector(7 downto 0); 
        b_out:  out     std_logic
    );
end n_bit_subtractor;

architecture n_bit_subtractor_arch of n_bit_subtractor is
    component full_subtractor
        port (
            x:      in      std_logic; 
            y:      in      std_logic; 
            b_in:   in      std_logic; 
            diff:   out     std_logic; 
            b_out:  out     std_logic 
        );
    end component;
    signal link: std_logic_vector(8 downto 0);
begin
    link(0) <= '0'; 
    subtractor_f: for i in 0 to 7 generate
        subtractor_i: full_subtractor port map(x(i), y(i), link(i), o(i), link(i + 1));
    end generate;
    b_out <= link(8);
end n_bit_subtractor_arch;

configuration n_bit_subtractor_cfg of n_bit_subtractor is
    for n_bit_subtractor_arch end for;
end configuration;
