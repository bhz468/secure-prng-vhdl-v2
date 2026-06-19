
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.pkg_rcprng_params.all;

entity permutation_core is
    Port (
        clk        : in  std_logic;
        reset_n    : in  std_logic;
        start      : in  std_logic;
        state_in   : in  t_state;
        absorb_in  : in  std_logic_vector(RATE_B-1 downto 0);
        state_out  : out t_state;
        done       : out std_logic
    );
end permutation_core;