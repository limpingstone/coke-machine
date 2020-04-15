library ieee;
use ieee.std_logic_1164.all;

entity full_subtractor is
    port (
        x:      in      std_logic;    
        y:      in      std_logic;    
        b_in:   in      std_logic;    
        diff:   out     std_logic;
        b_out:  out     std_logic    
    );
end full_subtractor;

architecture full_subtractor_arch of full_subtractor is 
    signal s1, s2, s3: std_logic;
begin 
    s1      <= ( not x ) and y;
    s2      <= ( not x ) and b_in;
    s3      <= ( y and b_in );
    diff    <= ( x xor y ) xor b_in;
    b_out   <= ( s1 or s2 or s3 );
end full_subtractor_arch;

configuration full_subtractor_cfg of full_subtractor is
    for full_subtractor_arch
        end for;
end configuration;
