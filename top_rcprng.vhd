
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_rcprng_params.all;

entity top_rcprng is
  port (
    clk       : in std_logic;
    rd_clk    : in std_logic;
    reset_n   : in std_logic;
    out_ready : in std_logic;
    out_data  : out std_logic_vector(RATE_B-1 downto 0);
    out_valid : out std_logic
  );
end entity: