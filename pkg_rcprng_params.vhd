
-- pkg_rcprng_params.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package pkg_rcprng_params is
  -- Paramètres génériques
  constant STATE_B : natural := 320;  -- taille de l'état (ex : Ascon)
  constant RATE_B  : natural := 64;   -- nombre de bits extraits par squeeze
  constant CAPACITY_B : natural := STATE_B - RATE_B;
  constant WORD : natural := 32;      -- largeur de bus interne (pour FIFO, etc)
  constant KEYLEN : natural := 128;   -- longueur clé par défaut
  -- Type utile
  subtype t_word is std_logic_vector(WORD-1 downto 0);
  subtype t_state is std_logic_vector(STATE_B-1 downto 0);
  -- FSM states (string pour debug)
  type t_state_fsm is (S_RESET, S_INIT, S_HEALTH, S_ABSORB, S_PERMUTE, S_SQUEEZE, S_OUTPUT);
end package pkg_rcprng_params;