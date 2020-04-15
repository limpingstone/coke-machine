library ieee;
use ieee.std_logic_1164.all;

entity coke_mach_tb is 
    port (
        paid:           out     std_logic; 
        change:         out     std_logic_vector(7 downto 0)
    );
end coke_mach_tb;

architecture coke_mach_tb_arch of coke_mach_tb is
    component coke_mach
        port (
            clk:        in      std_logic;
            reset:      in      std_logic;
            coin_in:    in      std_logic_vector(2 downto 0);
            paid:       out     std_logic;
            change:     out     std_logic_vector(7 downto 0) 
        );
    end component;

    -- Test inputs
    signal clk, reset: std_logic := '0';
    signal coin_in: std_logic_vector(2 downto 0);
begin
    uut: coke_mach port map (
        clk, reset, coin_in, paid, change
    );

    coin_in <= "000", 
               "100" after 25 ns, 
               "000" after 35 ns,
               "010" after 85 ns, 
               "000" after 95 ns,
               "001" after 125 ns,
               "000" after 135 ns,
               "100" after 185 ns,
               "000" after 195 ns,
               "100" after 245 ns,
               "000" after 255 ns;

    clk <=  not clk after 10 ns, 
            not clk after 20 ns,
			not clk after 30 ns,
			not clk after 40 ns,
			not clk after 50 ns,
			not clk after 60 ns,
			not clk after 70 ns,
			not clk after 80 ns,
			not clk after 90 ns,
			not clk after 100 ns,
			not clk after 110 ns,
			not clk after 120 ns,
			not clk after 130 ns,
			not clk after 140 ns,
			not clk after 150 ns,
			not clk after 160 ns,
			not clk after 170 ns,
			not clk after 180 ns,
			not clk after 190 ns,
			not clk after 200 ns,
			not clk after 210 ns,
			not clk after 220 ns,
			not clk after 230 ns,
			not clk after 240 ns,
			not clk after 250 ns,
			not clk after 260 ns,
			not clk after 270 ns,
			not clk after 280 ns,
			not clk after 290 ns;
    
end coke_mach_tb_arch;

configuration coke_mach_tb_cfg of coke_mach_tb is
    for coke_mach_tb_arch end for; 
end configuration;
