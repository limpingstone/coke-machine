library ieee;
use ieee.std_logic_1164.all;

entity n_bit_mem is
    port (
        clk:    in      std_logic;
        d:      in      std_logic_vector(7 downto 0);
        q:      out     std_logic_vector(7 downto 0)
    );
end n_bit_mem;

architecture n_bit_mem_arch of n_bit_mem is
    component d_flip_flop
        port (
            clk:    in      std_logic;
            d:      in      std_logic;
            q:      out     std_logic
        );
    end component;
begin
    dff_f: for i in 0 to 7 generate
        dff_i: d_flip_flop port map (clk, d(i), q(i));
    end generate;
end n_bit_mem_arch;

configuration n_bit_mem_cfg of n_bit_mem is
    for n_bit_mem_arch end for;
end configuration;
