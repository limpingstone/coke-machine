library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop is 
    port (
        clk:    in      std_logic;
        d:      in      std_logic;
        q:      out     std_logic 
    );
end d_flip_flop;

architecture d_flip_flop_arch of d_flip_flop is
begin
    process(clk) begin
        if (rising_edge(clk)) then
            q <= d;
        end if;
    end process;
end d_flip_flop_arch;

configuration d_flip_flop_cfg of d_flip_flop is
    for d_flip_flop_arch end for;
end configuration;
