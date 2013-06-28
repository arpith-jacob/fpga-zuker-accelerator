
-- File: merge.vhd
-- Date: 28 Oct 2010
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      Merge output from two zuker arrays on two FPGAs
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library work;
use work.zuker_pkg.all;

entity merge is
  port (
    clk                : in  sl;
    reset              : in sl;

    din_FPGA1          : in  slv(63 downto 0);
    data_cnt_in_FPGA1  : in  slv(2 downto 0);
    data_vld_in_FPGA1  : in  sl;
    ctrl_vld_in_FPGA1  : in  sl;
    waitupstrm_FPGA1   : out sl;

    din_FPGA2          : in  slv(63 downto 0);
    data_cnt_in_FPGA2  : in  slv(2 downto 0);
    data_vld_in_FPGA2  : in  sl;
    ctrl_vld_in_FPGA2  : in  sl;
    waitupstrm_FPGA2   : out sl;

    waitdnstrm         : in  sl;
    dout_Merge         : out slv(63 downto 0);
    data_cnt_out_Merge : out slv(2 downto 0);
    data_vld_out_Merge : out sl;
    ctrl_vld_out_Merge : out sl
  );
end entity merge;

architecture top_level of merge is

  component merge_fifo is
    port (
      valid            : out sl;
      prog_full        : out sl;
      rd_en            : in  sl;
      wr_en            : in  sl;
      full             : out sl;
      empty            : out sl;
      clk              : in  sl;
      rst              : in  sl;
      dout             : out slv(68 downto 0);
      din              : in  slv(68 downto 0)
    );
  end component;

  signal fifo1_vld     : sl;
  signal fifo1_rd      : sl;
  signal fifo1_dout    : slv(68 downto 0);
  signal fifo1_wr      : sl;
  signal fifo1_din     : slv(68 downto 0);

  signal fifo2_vld     : sl;
  signal fifo2_rd      : sl;
  signal fifo2_dout    : slv(68 downto 0);
  signal fifo2_wr      : sl;
  signal fifo2_din     : slv(68 downto 0);

  signal int_fifo1_dout : slv(63 downto 0);
  signal int_fifo1_cnt  : slv(2 downto 0);
  signal int_fifo1_dvld : sl;
  signal int_fifo1_cvld : sl;

  signal int_fifo2_dout : slv(63 downto 0);
  signal int_fifo2_cnt  : slv(2 downto 0);
  signal int_fifo2_dvld : sl;
  signal int_fifo2_cvld : sl;

begin

  -- store FIFO1 output
  fifo1_wr  <= ctrl_vld_in_FPGA1 or data_vld_in_FPGA1;
  fifo1_din <= din_FPGA1 & data_cnt_in_FPGA1 & data_vld_in_FPGA1 & ctrl_vld_in_FPGA1;

  store_FIFO1 : merge_fifo
    port map (
      clk         => clk,
      rst         => reset,
      valid       => fifo1_vld,
      rd_en       => fifo1_rd,
      empty       => open,
      dout        => fifo1_dout,

      wr_en       => fifo1_wr,
      full        => open,
      prog_full   => waitupstrm_FPGA1,
      din         => fifo1_din
    );

  int_fifo1_dout <= fifo1_dout(68 downto 5);
  int_fifo1_cnt  <= fifo1_dout(4 downto 2);
  int_fifo1_dvld <= fifo1_dout(1) and fifo1_vld;
  int_fifo1_cvld <= fifo1_dout(0) and fifo1_vld;


  -- store FIFO2 output
  fifo2_wr  <= '0'; --ctrl_vld_in_FPGA2 or data_vld_in_FPGA2;
  fifo2_din <= din_FPGA2 & data_cnt_in_FPGA2 & data_vld_in_FPGA2 & ctrl_vld_in_FPGA2;

  store_FIFO2 : merge_fifo
    port map (
      clk         => clk,
      rst         => reset,
      valid       => fifo2_vld,
      rd_en       => fifo2_rd,
      empty       => open,
      dout        => fifo2_dout,

      wr_en       => fifo2_wr,
      full        => open,
      prog_full   => waitupstrm_FPGA2,
      din         => fifo2_din
    );

  int_fifo2_dout <= fifo2_dout(68 downto 5);
  int_fifo2_cnt  <= fifo2_dout(4 downto 2);
  int_fifo2_dvld <= fifo2_dout(1) and fifo2_vld;
  int_fifo2_cvld <= fifo2_dout(0) and fifo2_vld;

  read_fifos : process (int_fifo1_dvld, int_fifo2_dvld,
                        int_fifo1_dout, int_fifo2_dout,
                        int_fifo1_cvld, int_fifo2_cvld
                        )
  begin

    fifo1_rd <= '0';
    fifo2_rd <= '0';

    if int_fifo1_dvld = '1' or int_fifo1_cvld = '1' then
      fifo1_rd <= '1';
    end if;

--    if int_fifo1_dvld = '1' and int_fifo2_dvld = '1' then
--      if int_fifo1_dout(63 downto 32) < int_fifo2_dout(63 downto 32) then
--        fifo1_rd <= '1';
--      else
--        fifo2_rd <= '1';
--      end if;
--    elsif int_fifo1_dvld = '1' and int_fifo2_cvld = '1' and
--            int_fifo2_dout(63 downto 48) = x"4546" and
--            int_fifo2_dout(37 downto 32) = "000000" then
--        fifo1_rd <= '1';
--   elsif int_fifo2_dvld = '1' and int_fifo1_cvld = '1' and
--            int_fifo1_dout(63 downto 48) = x"4546" and
--            int_fifo1_dout(37 downto 32) = "000000" then
--        fifo2_rd <= '1';
--    elsif (int_fifo1_cvld = '1' and int_fifo2_cvld = '1' and
--          int_fifo1_dout(63 downto 48) = x"4546" and
--            int_fifo1_dout(37 downto 32) = "000000" and
--          int_fifo2_dout(63 downto 48) = x"4546" and
--            int_fifo2_dout(37 downto 32) = "000000") then
--      fifo1_rd <= '1';
--      fifo2_rd <= '1';
--    elsif int_fifo1_cvld = '1' and
--          (int_fifo1_dout(63 downto 48) /= x"4546" or
--            int_fifo1_dout(37 downto 32) /= "000000") then
--      fifo1_rd <= '1';
--    elsif int_fifo2_cvld = '1' and
--          (int_fifo2_dout(63 downto 48) /= x"4546" or
--            int_fifo2_dout(37 downto 32) /= "000000") then
--      fifo2_rd <= '1';
--    end if;

  end process read_fifos;

  -- now read outputs of the two fifos
  reg_outputs: process (clk)
  begin 
    if rising_edge(clk) then
      if reset = '1' then
        dout_Merge         <= (others => '0');
        data_cnt_out_Merge <= (others => '0');
        data_vld_out_Merge <= '0';
        ctrl_vld_out_Merge <= '0';
      else
        dout_Merge         <= (others => '0');
        data_cnt_out_Merge <= (others => '0');
        data_vld_out_Merge <= '0';
        ctrl_vld_out_Merge <= '0';

        if fifo1_vld = '1' then
          dout_Merge         <= int_fifo1_dout;
          data_cnt_out_Merge <= int_fifo1_cnt;
          data_vld_out_Merge <= int_fifo1_dvld;
          ctrl_vld_out_Merge <= int_fifo1_cvld;
        end if;

      end if; -- end reset 
    end if;  -- end rising_edge
  end process reg_outputs;

end architecture top_level; 
