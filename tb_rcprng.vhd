library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_rcprng_params.all;

entity tb_rcprng is
end entity;

architecture sim of tb_rcprng is
  signal clk       : std_logic := '0';
  signal rd_clk    : std_logic := '0';
  signal reset_n   : std_logic := '0';
  signal out_ready : std_logic := '1';
  signal out_data  : std_logic_vector(RATE_B-1 downto 0);
  signal out_valid : std_logic;
  constant CLK_PERIOD : time := 10 ns;
  constant RD_CLK_PERIOD : time := 40 ns;
end architecture;