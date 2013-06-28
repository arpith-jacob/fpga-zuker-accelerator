
-- File: delay_pipe.vhd
-- Date: 23 Feb 2008
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module delays a signal through `n' stages.  Based on Craig Ulmer's
-- module
--
--  Updated October 8, 2009
--

library ieee;
use ieee.std_logic_1164.all;
use work.zuker_pkg.all;

entity delay_pipe is
  generic (
    DATA_WIDTH     : natural := 1;
    DELAY_STATES   : natural := 1;
    NEEDS_RESET    : boolean := true;

    -- When needs reset=true, True: set all vals to 1, else 0
    RESET_VAL_HIGH : boolean := false
    );
  port (
    clk   : in  sl;
    reset : in  sl;
    din   : in  slv (DATA_WIDTH-1 downto 0);
    dout  : out slv (DATA_WIDTH-1 downto 0)
    );
end entity;

architecture behav of delay_pipe is

  -- we need DELAY_STATES - 1 flops only, since dout_int provides the last one.
  type slv_array is array (DELAY_STATES-1 downto 0) of
         slv (DATA_WIDTH-1 downto 0);

  signal dout_int : slv(DATA_WIDTH-1 downto 0);

begin

  -- assign output of module
  dout <= dout_int;

  -- no pipeline stages
  gen_zero : if (DELAY_STATES = 0) generate
    dout_int <= din;
  end generate gen_zero;

  -- non-zero pipeline stages: we need to register data
  gen_reg: if (DELAY_STATES > 0) generate
    -- generate data signal only if DELAY_STATES > 0
    signal data_flop : slv_array;
  begin
    process (clk)
    begin
      if rising_edge(clk) then
        --Note: by removing the reset, we can map to Xilinx SRL's efficiently
        if (NEEDS_RESET and (reset = '1')) then

          -- initial values
          if (RESET_VAL_HIGH) then
            data_flop <= (others => (others => '1'));
            dout_int  <= (others => '1');
          else
            data_flop <= (others => (others => '0'));
            dout_int  <= (others => '0');
          end if;

        else

          if (DELAY_STATES = 1) then
            dout_int <= din;
          else
            dout_int <= data_flop (DELAY_STATES-2);

            if (DELAY_STATES = 2) then
              data_flop(0) <= din;
            else
              data_flop(DELAY_STATES-2 downto 0) <=
                data_flop(DELAY_STATES-3 downto 0) & din;
            end if;

          end if;

        end if;
      end if;
    end process;
  end generate gen_reg;

end behav;
