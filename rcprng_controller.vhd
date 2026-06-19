
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_rcprng_params.all;

entity rcprng_controller is
  port (
    clk        : in std_logic;
    reset_n    : in std_logic;
    entropy_in : in  std_logic_vector(63 downto 0);
    entropy_valid : in std_logic;
    entropy_health_ok : in std_logic;
    perm_start   : out std_logic;
    perm_state_in: out t_state;
    perm_absorb  : out std_logic_vector(RATE_B-1 downto 0);
    perm_done    : in std_logic;
    perm_state_out: in t_state;
    out_word    : out std_logic_vector(RATE_B-1 downto 0);
    out_valid   : out std_logic;
    out_ready   : in std_logic;
    status_ok   : out std_logic
  );
end entity: