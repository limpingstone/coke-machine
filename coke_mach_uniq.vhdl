
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_coke_mach is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_coke_mach;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_subtractor_6 is

   port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);

end full_subtractor_6;

architecture SYN_full_subtractor_arch of full_subtractor_6 is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : EN port map( A => n1, B => n2, Z => diff);
   U2 : EN port map( A => n3, B => x, Z => n2);
   U3 : AO4 port map( A => x, B => n1, C => n4, D => n3, Z => b_out);
   U4 : IV port map( A => y, Z => n3);
   U5 : AN2 port map( A => n1, B => x, Z => n4);
   U6 : IV port map( A => b_in, Z => n1);

end SYN_full_subtractor_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_subtractor_5 is

   port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);

end full_subtractor_5;

architecture SYN_full_subtractor_arch of full_subtractor_5 is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : EN port map( A => n1, B => n2, Z => diff);
   U2 : EN port map( A => n3, B => x, Z => n2);
   U3 : AO4 port map( A => x, B => n1, C => n4, D => n3, Z => b_out);
   U4 : IV port map( A => y, Z => n3);
   U5 : AN2 port map( A => n1, B => x, Z => n4);
   U6 : IV port map( A => b_in, Z => n1);

end SYN_full_subtractor_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_subtractor_4 is

   port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);

end full_subtractor_4;

architecture SYN_full_subtractor_arch of full_subtractor_4 is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : EN port map( A => n1, B => n2, Z => diff);
   U2 : EN port map( A => n3, B => x, Z => n2);
   U3 : AO4 port map( A => x, B => n1, C => n4, D => n3, Z => b_out);
   U4 : IV port map( A => y, Z => n3);
   U5 : AN2 port map( A => n1, B => x, Z => n4);
   U6 : IV port map( A => b_in, Z => n1);

end SYN_full_subtractor_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_subtractor_3 is

   port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);

end full_subtractor_3;

architecture SYN_full_subtractor_arch of full_subtractor_3 is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : EN port map( A => n1, B => n2, Z => diff);
   U2 : EN port map( A => n3, B => x, Z => n2);
   U3 : AO4 port map( A => x, B => n1, C => n4, D => n3, Z => b_out);
   U4 : IV port map( A => y, Z => n3);
   U5 : AN2 port map( A => n1, B => x, Z => n4);
   U6 : IV port map( A => b_in, Z => n1);

end SYN_full_subtractor_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_subtractor_2 is

   port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);

end full_subtractor_2;

architecture SYN_full_subtractor_arch of full_subtractor_2 is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : EN port map( A => n1, B => n2, Z => diff);
   U2 : EN port map( A => n3, B => x, Z => n2);
   U3 : AO4 port map( A => x, B => n1, C => n4, D => n3, Z => b_out);
   U4 : IV port map( A => y, Z => n3);
   U5 : AN2 port map( A => n1, B => x, Z => n4);
   U6 : IV port map( A => b_in, Z => n1);

end SYN_full_subtractor_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_subtractor_1 is

   port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);

end full_subtractor_1;

architecture SYN_full_subtractor_arch of full_subtractor_1 is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : EN port map( A => n1, B => n2, Z => diff);
   U2 : EN port map( A => n3, B => x, Z => n2);
   U3 : AO4 port map( A => x, B => n1, C => n4, D => n3, Z => b_out);
   U4 : IV port map( A => y, Z => n3);
   U5 : AN2 port map( A => n1, B => x, Z => n4);
   U6 : IV port map( A => b_in, Z => n1);

end SYN_full_subtractor_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_subtractor_0 is

   port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);

end full_subtractor_0;

architecture SYN_full_subtractor_arch of full_subtractor_0 is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : EN port map( A => n1, B => n2, Z => diff);
   U2 : EN port map( A => n3, B => x, Z => n2);
   U3 : AO4 port map( A => x, B => n1, C => n4, D => n3, Z => b_out);
   U4 : IV port map( A => y, Z => n3);
   U5 : AN2 port map( A => n1, B => x, Z => n4);
   U6 : IV port map( A => b_in, Z => n1);

end SYN_full_subtractor_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_adder_6 is

   port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);

end full_adder_6;

architecture SYN_full_adder_arch of full_adder_6 is

   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : EO port map( A => c_in, B => n1, Z => sum);
   U2 : IV port map( A => n2, Z => c_out);
   U3 : AO2 port map( A => y, B => x, C => n1, D => c_in, Z => n2);
   U4 : EO port map( A => y, B => x, Z => n1);

end SYN_full_adder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_adder_5 is

   port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);

end full_adder_5;

architecture SYN_full_adder_arch of full_adder_5 is

   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : EO port map( A => c_in, B => n1, Z => sum);
   U2 : IV port map( A => n2, Z => c_out);
   U3 : AO2 port map( A => y, B => x, C => n1, D => c_in, Z => n2);
   U4 : EO port map( A => y, B => x, Z => n1);

end SYN_full_adder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_adder_4 is

   port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);

end full_adder_4;

architecture SYN_full_adder_arch of full_adder_4 is

   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : EO port map( A => c_in, B => n1, Z => sum);
   U2 : IV port map( A => n2, Z => c_out);
   U3 : AO2 port map( A => y, B => x, C => n1, D => c_in, Z => n2);
   U4 : EO port map( A => y, B => x, Z => n1);

end SYN_full_adder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_adder_3 is

   port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);

end full_adder_3;

architecture SYN_full_adder_arch of full_adder_3 is

   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : EO port map( A => c_in, B => n1, Z => sum);
   U2 : IV port map( A => n2, Z => c_out);
   U3 : AO2 port map( A => y, B => x, C => n1, D => c_in, Z => n2);
   U4 : EO port map( A => y, B => x, Z => n1);

end SYN_full_adder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_adder_2 is

   port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);

end full_adder_2;

architecture SYN_full_adder_arch of full_adder_2 is

   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : EO port map( A => c_in, B => n1, Z => sum);
   U2 : IV port map( A => n2, Z => c_out);
   U3 : AO2 port map( A => y, B => x, C => n1, D => c_in, Z => n2);
   U4 : EO port map( A => y, B => x, Z => n1);

end SYN_full_adder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_adder_1 is

   port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);

end full_adder_1;

architecture SYN_full_adder_arch of full_adder_1 is

   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : EO port map( A => c_in, B => n1, Z => sum);
   U2 : IV port map( A => n2, Z => c_out);
   U3 : AO2 port map( A => y, B => x, C => n1, D => c_in, Z => n2);
   U4 : EO port map( A => y, B => x, Z => n1);

end SYN_full_adder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_adder_0 is

   port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);

end full_adder_0;

architecture SYN_full_adder_arch of full_adder_0 is

   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : EO port map( A => c_in, B => n1, Z => sum);
   U2 : IV port map( A => n2, Z => c_out);
   U3 : AO2 port map( A => y, B => x, C => n1, D => c_in, Z => n2);
   U4 : EO port map( A => y, B => x, Z => n1);

end SYN_full_adder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_subtractor_7 is

   port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);

end full_subtractor_7;

architecture SYN_full_subtractor_arch of full_subtractor_7 is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : EN port map( A => n1, B => n2, Z => diff);
   U2 : EN port map( A => n3, B => x, Z => n2);
   U3 : AO4 port map( A => x, B => n1, C => n4, D => n3, Z => b_out);
   U4 : IV port map( A => y, Z => n3);
   U5 : AN2 port map( A => n1, B => x, Z => n4);
   U6 : IV port map( A => b_in, Z => n1);

end SYN_full_subtractor_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity full_adder_7 is

   port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);

end full_adder_7;

architecture SYN_full_adder_arch of full_adder_7 is

   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO2
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : EO port map( A => c_in, B => n1, Z => sum);
   U2 : IV port map( A => n2, Z => c_out);
   U3 : AO2 port map( A => y, B => x, C => n1, D => c_in, Z => n2);
   U4 : EO port map( A => y, B => x, Z => n1);

end SYN_full_adder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity n_bit_subtractor is

   port( x, y : in std_logic_vector (7 downto 0);  b_in : in std_logic;  o : 
         out std_logic_vector (7 downto 0);  b_out : out std_logic);

end n_bit_subtractor;

architecture SYN_n_bit_subtractor_arch of n_bit_subtractor is

   component full_subtractor_0
      port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);
   end component;
   
   component full_subtractor_1
      port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);
   end component;
   
   component full_subtractor_2
      port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);
   end component;
   
   component full_subtractor_3
      port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);
   end component;
   
   component full_subtractor_4
      port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);
   end component;
   
   component full_subtractor_5
      port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);
   end component;
   
   component full_subtractor_6
      port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);
   end component;
   
   component full_subtractor_7
      port( x, y, b_in : in std_logic;  diff, b_out : out std_logic);
   end component;
   
   signal X_Logic0_port, link_7_port, link_6_port, link_5_port, link_4_port, 
      link_3_port, link_2_port, link_1_port : std_logic;

begin
   
   subtractor_i_0 : full_subtractor_7 port map( x => x(0), y => y(0), b_in => 
                           X_Logic0_port, diff => o(0), b_out => link_1_port);
   subtractor_i_1 : full_subtractor_6 port map( x => x(1), y => y(1), b_in => 
                           link_1_port, diff => o(1), b_out => link_2_port);
   subtractor_i_2 : full_subtractor_5 port map( x => x(2), y => y(2), b_in => 
                           link_2_port, diff => o(2), b_out => link_3_port);
   subtractor_i_3 : full_subtractor_4 port map( x => x(3), y => y(3), b_in => 
                           link_3_port, diff => o(3), b_out => link_4_port);
   subtractor_i_4 : full_subtractor_3 port map( x => x(4), y => y(4), b_in => 
                           link_4_port, diff => o(4), b_out => link_5_port);
   subtractor_i_5 : full_subtractor_2 port map( x => x(5), y => y(5), b_in => 
                           link_5_port, diff => o(5), b_out => link_6_port);
   subtractor_i_6 : full_subtractor_1 port map( x => x(6), y => y(6), b_in => 
                           link_6_port, diff => o(6), b_out => link_7_port);
   subtractor_i_7 : full_subtractor_0 port map( x => x(7), y => y(7), b_in => 
                           link_7_port, diff => o(7), b_out => b_out);
   X_Logic0_port <= '0';

end SYN_n_bit_subtractor_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity n_bit_adder is

   port( x, y : in std_logic_vector (7 downto 0);  c_in : in std_logic;  o : 
         out std_logic_vector (7 downto 0);  c_out : out std_logic);

end n_bit_adder;

architecture SYN_n_bit_adder_arch of n_bit_adder is

   component full_adder_0
      port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);
   end component;
   
   component full_adder_1
      port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);
   end component;
   
   component full_adder_2
      port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);
   end component;
   
   component full_adder_3
      port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);
   end component;
   
   component full_adder_4
      port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);
   end component;
   
   component full_adder_5
      port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);
   end component;
   
   component full_adder_6
      port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);
   end component;
   
   component full_adder_7
      port( x, y, c_in : in std_logic;  sum, c_out : out std_logic);
   end component;
   
   signal link_7_port, link_6_port, link_5_port, link_4_port, link_3_port, 
      link_2_port, link_1_port : std_logic;

begin
   
   adder_i_0 : full_adder_7 port map( x => x(0), y => y(0), c_in => c_in, sum 
                           => o(0), c_out => link_1_port);
   adder_i_1 : full_adder_6 port map( x => x(1), y => y(1), c_in => link_1_port
                           , sum => o(1), c_out => link_2_port);
   adder_i_2 : full_adder_5 port map( x => x(2), y => y(2), c_in => link_2_port
                           , sum => o(2), c_out => link_3_port);
   adder_i_3 : full_adder_4 port map( x => x(3), y => y(3), c_in => link_3_port
                           , sum => o(3), c_out => link_4_port);
   adder_i_4 : full_adder_3 port map( x => x(4), y => y(4), c_in => link_4_port
                           , sum => o(4), c_out => link_5_port);
   adder_i_5 : full_adder_2 port map( x => x(5), y => y(5), c_in => link_5_port
                           , sum => o(5), c_out => link_6_port);
   adder_i_6 : full_adder_1 port map( x => x(6), y => y(6), c_in => link_6_port
                           , sum => o(6), c_out => link_7_port);
   adder_i_7 : full_adder_0 port map( x => x(7), y => y(7), c_in => link_7_port
                           , sum => o(7), c_out => c_out);

end SYN_n_bit_adder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity decoder is

   port( coins : in std_logic_vector (2 downto 0);  val : out std_logic_vector 
         (7 downto 0));

end decoder;

architecture SYN_decoder_arch of decoder is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AN3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal X_Logic0_port, val_4_port, val_3_port, val_2_port, val_1_port, 
      val_0_port, n1, n2 : std_logic;

begin
   val <= ( X_Logic0_port, X_Logic0_port, X_Logic0_port, val_4_port, val_3_port
      , val_2_port, val_1_port, val_0_port );
   
   X_Logic0_port <= '0';
   U3 : OR2 port map( A => val_4_port, B => val_1_port, Z => val_3_port);
   U4 : NR3 port map( A => coins(0), B => coins(2), C => n1, Z => val_1_port);
   U5 : OR2 port map( A => val_4_port, B => val_2_port, Z => val_0_port);
   U6 : AN3 port map( A => n1, B => n2, C => coins(0), Z => val_2_port);
   U7 : IV port map( A => coins(1), Z => n1);
   U8 : NR3 port map( A => coins(0), B => coins(1), C => n2, Z => val_4_port);
   U9 : IV port map( A => coins(2), Z => n2);

end SYN_decoder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_coke_mach.all;

entity coke_mach is

   port( clk, reset : in std_logic;  coin_in : in std_logic_vector (2 downto 0)
         ;  paid : out std_logic;  change : out std_logic_vector (7 downto 0));

end coke_mach;

architecture SYN_coke_mach_arch of coke_mach is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component n_bit_subtractor
      port( x, y : in std_logic_vector (7 downto 0);  b_in : in std_logic;  o :
            out std_logic_vector (7 downto 0);  b_out : out std_logic);
   end component;
   
   component n_bit_adder
      port( x, y : in std_logic_vector (7 downto 0);  c_in : in std_logic;  o :
            out std_logic_vector (7 downto 0);  c_out : out std_logic);
   end component;
   
   component decoder
      port( coins : in std_logic_vector (2 downto 0);  val : out 
            std_logic_vector (7 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, coin_val_7_port, coin_val_6_port, 
      coin_val_5_port, coin_val_4_port, coin_val_3_port, coin_val_2_port, 
      coin_val_1_port, coin_val_0_port, sum_reg_7_port, sum_reg_6_port, 
      sum_reg_5_port, sum_reg_4_port, sum_reg_3_port, sum_reg_2_port, 
      sum_reg_1_port, sum_reg_0_port, added_output_7_port, added_output_6_port,
      added_output_5_port, added_output_4_port, added_output_3_port, 
      added_output_2_port, added_output_1_port, added_output_0_port, carry, 
      net35, n1, n2, n3, n4, n5, n6, n7, n8, net307, net308, net309 : std_logic
      ;

begin
   
   coin_decoder : decoder port map( coins(2) => coin_in(2), coins(1) => 
                           coin_in(1), coins(0) => coin_in(0), val(7) => net307
                           , val(6) => net308, val(5) => net309, val(4) => 
                           coin_val_4_port, val(3) => coin_val_3_port, val(2) 
                           => coin_val_2_port, val(1) => coin_val_1_port, 
                           val(0) => coin_val_0_port);
   coin_adder : n_bit_adder port map( x(7) => coin_val_7_port, x(6) => 
                           coin_val_6_port, x(5) => coin_val_5_port, x(4) => 
                           coin_val_4_port, x(3) => coin_val_3_port, x(2) => 
                           coin_val_2_port, x(1) => coin_val_1_port, x(0) => 
                           coin_val_0_port, y(7) => sum_reg_7_port, y(6) => 
                           sum_reg_6_port, y(5) => sum_reg_5_port, y(4) => 
                           sum_reg_4_port, y(3) => sum_reg_3_port, y(2) => 
                           sum_reg_2_port, y(1) => sum_reg_1_port, y(0) => 
                           sum_reg_0_port, c_in => X_Logic0_port, o(7) => 
                           added_output_7_port, o(6) => added_output_6_port, 
                           o(5) => added_output_5_port, o(4) => 
                           added_output_4_port, o(3) => added_output_3_port, 
                           o(2) => added_output_2_port, o(1) => 
                           added_output_1_port, o(0) => added_output_0_port, 
                           c_out => net35);
   coin_subtractor : n_bit_subtractor port map( x(7) => sum_reg_7_port, x(6) =>
                           sum_reg_6_port, x(5) => sum_reg_5_port, x(4) => 
                           sum_reg_4_port, x(3) => sum_reg_3_port, x(2) => 
                           sum_reg_2_port, x(1) => sum_reg_1_port, x(0) => 
                           sum_reg_0_port, y(7) => X_Logic0_port, y(6) => 
                           X_Logic1_port, y(5) => X_Logic0_port, y(4) => 
                           X_Logic0_port, y(3) => X_Logic1_port, y(2) => 
                           X_Logic0_port, y(1) => X_Logic1_port, y(0) => 
                           X_Logic1_port, b_in => X_Logic0_port, o(7) => 
                           change(7), o(6) => change(6), o(5) => change(5), 
                           o(4) => change(4), o(3) => change(3), o(2) => 
                           change(2), o(1) => change(1), o(0) => change(0), 
                           b_out => carry);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   sum_reg_reg_0_inst : FD1 port map( D => added_output_0_port, CP => clk, Q =>
                           sum_reg_0_port, QN => n8);
   sum_reg_reg_1_inst : FD1 port map( D => added_output_1_port, CP => clk, Q =>
                           sum_reg_1_port, QN => n7);
   sum_reg_reg_2_inst : FD1 port map( D => added_output_2_port, CP => clk, Q =>
                           sum_reg_2_port, QN => n6);
   sum_reg_reg_3_inst : FD1 port map( D => added_output_3_port, CP => clk, Q =>
                           sum_reg_3_port, QN => n5);
   sum_reg_reg_4_inst : FD1 port map( D => added_output_4_port, CP => clk, Q =>
                           sum_reg_4_port, QN => n4);
   sum_reg_reg_5_inst : FD1 port map( D => added_output_5_port, CP => clk, Q =>
                           sum_reg_5_port, QN => n3);
   sum_reg_reg_6_inst : FD1 port map( D => added_output_6_port, CP => clk, Q =>
                           sum_reg_6_port, QN => n2);
   sum_reg_reg_7_inst : FD1 port map( D => added_output_7_port, CP => clk, Q =>
                           sum_reg_7_port, QN => n1);
   coin_val_5_port <= '0';
   coin_val_6_port <= '0';
   coin_val_7_port <= '0';
   U7 : IV port map( A => carry, Z => paid);

end SYN_coke_mach_arch;
