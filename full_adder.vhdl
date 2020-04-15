library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port (
        x:      in      std_logic;    
        y:      in      std_logic;    
        c_in:   in      std_logic;    
        sum:    out     std_logic;
        c_out:  out     std_logic    
    );
end full_adder;

architecture full_adder_arch of full_adder is 
    signal s1, s2, s3: std_logic;
begin 
    s1      <= ( x xor y );
    s2      <= ( c_in and s1 );
    s3      <= ( x and y );
    sum     <= ( s1 xor c_in );
    c_out   <= ( s2 or s3 );
end full_adder_arch;

configuration full_adder_cfg of full_adder is
    for full_adder_arch
        end for;
end configuration;
