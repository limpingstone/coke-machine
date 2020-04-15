library ieee;
use ieee.std_logic_1164.all;

entity coke_mach_tb_proc is
end coke_mach_tb_proc;

architecture coke_mach_tb_proc_arch of coke_mach_tb_proc is
    component coke_mach
        port(
            clk:        in      std_logic;
            reset:      in      std_logic;
            coin_in:    in      std_logic_vector(2 downto 0);
            paid:       out     std_logic;
            change:     out     std_logic_vector(7 downto 0)
        );
    end component;
    signal clk: std_logic; 
    signal coin_in: std_logic_vector(2 downto 0); 
    signal paid: std_logic; 
    signal change: std_logic_vector(7 downto 0); 
begin
    uut: coke_mach port map(clk, '0', coin_in, paid, change);
    
    process begin

        clk <= '0';
        coin_in <= "000";
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        coin_in <= "100";
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        coin_in <= "000";
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        coin_in <= "010";
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        coin_in <= "000";
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        coin_in <= "001";
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        coin_in <= "000";
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        coin_in <= "100";
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        coin_in <= "000";
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        coin_in <= "100";
        wait for 1 ns;

        clk <= '1';
        wait for 1 ns;

        clk <= '0';
        coin_in <= "000";
        wait for 1 ns;

        assert false report "Run successfully";
        wait;
    end process;
end coke_mach_tb_proc_arch;
