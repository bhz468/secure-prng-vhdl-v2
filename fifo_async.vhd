library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fifo_async is
    generic (
        DATA_WIDTH : integer := 8;
        DEPTH      : integer := 16
    );
    port (
        wr_clk : in  std_logic;
        rd_clk : in  std_logic;
        rst    : in  std_logic;
        wr_en  : in  std_logic;
        din    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        rd_en  : in  std_logic;
        dout   : out std_logic_vector(DATA_WIDTH-1 downto 0);
        full   : out std_logic;
        empty  : out std_logic
    );
end fifo_async;