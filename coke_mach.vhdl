library ieee;
use ieee.std_logic_1164.all;

entity coke_mach is 
    port(
        clk:        in      std_logic;
        reset:      in      std_logic;
        coin_in:    in      std_logic_vector(2 downto 0);
        paid:       out     std_logic;
        change:     out     std_logic_vector(7 downto 0)
    );
end coke_mach; 

architecture coke_mach_arch of coke_mach is
    component decoder
        port (
            coins:  in      std_logic_vector(2 downto 0);
            val:    out     std_logic_vector(7 downto 0) 
        );
    end component;
    component n_bit_adder
        port (
            x:      in      std_logic_vector(7 downto 0);
            y:      in      std_logic_vector(7 downto 0);
            c_in:   in      std_logic; 
            o:      out     std_logic_vector(7 downto 0); 
            c_out:  out     std_logic
        );
    end component;
    component n_bit_subtractor
        port (
            x:      in      std_logic_vector(7 downto 0);
            y:      in      std_logic_vector(7 downto 0);
            b_in:   in      std_logic;
            o:      out     std_logic_vector(7 downto 0); 
            b_out:  out     std_logic
        );
    end component;
    constant price: std_logic_vector(7 downto 0) := "01001011"; -- 75 cents (same value as 15 nickels)
    signal coin_val, sum_reg, added_output: std_logic_vector(7 downto 0) := (others => '0');
    signal carry, null_co: std_logic;
begin
    coin_decoder: decoder port map (
        coin_in, coin_val
    );

    coin_adder: n_bit_adder port map (
        coin_val, sum_reg, '0', added_output, null_co
    );

    coin_subtractor: n_bit_subtractor port map (
        sum_reg, price, '0', change, carry 
    );

    paid <= ( not carry );

    process(clk) begin 
        if (rising_edge(clk)) then
            sum_reg <= added_output;
        end if;
    end process;
end coke_mach_arch;

configuration coke_mach_cfg of coke_mach is
    for coke_mach_arch end for;
end configuration;
