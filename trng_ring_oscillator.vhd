-- trng_ring_oscillator.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_rcprng_params.all;

entity trng_ring_oscillator is
  generic (
    N_RO : natural := 8;        -- nombre d'oscillateurs en anneau
    RO_LEN : natural := 7;      -- longueur anneau (nombre d'inverseurs)
    SIM_MODE : boolean := true  -- true -> simulation friendly (deterministic)
  );
  port (
    clk      : in  std_logic;    -- clock d'échantillonnage (domained)
    reset_n  : in  std_logic;
    entropy_out : out std_logic_vector(N_RO-1 downto 0); -- bits d'entropie brute
    health_ok   : out std_logic
  );
end entity;