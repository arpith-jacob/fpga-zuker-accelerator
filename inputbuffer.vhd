library ieee;
use ieee.std_logic_1164.all;
use work.zuker_pkg.all;

entity inputbuffer is
  port (
    clk          : in sl;
    reset        : in sl;
    data_in      : in slv(63 downto 0);
    data_cnt_in  : in slv(2 downto 0);
    data_vld_in  : in sl;
    ctrl_vld_in  : in sl;
    wait_dn      : in sl;
    data_out     : out slv(63 downto 0);
    data_cnt_out : out slv(2 downto 0);
    data_vld_out : out sl;
    ctrl_vld_out : out sl;
    wait_up      : out sl  
    );
end inputbuffer;

architecture inputbuffer_a of inputbuffer is

  signal fifo_wr, fifo_rd, fifo_empty, fifo_full, fifo_data_vld : sl;
  signal fifo_din, fifo_dout : slv(68 downto 0);

  component fifo_69x16i
	port (
	clk: IN std_logic;
	din: IN std_logic_VECTOR(68 downto 0);
	rd_en: IN std_logic;
	rst: IN std_logic;
	wr_en: IN std_logic;
	dout: OUT std_logic_VECTOR(68 downto 0);
	empty: OUT std_logic;
	full: OUT std_logic;
	prog_full: OUT std_logic;
	valid: OUT std_logic);
  end component;
  
begin

  input_buff : fifo_69x16i
    port map (
      clk => clk,
      din => fifo_din,
      rd_en => fifo_rd,
      rst => reset,
      wr_en => fifo_wr,
      dout => fifo_dout,
      empty => fifo_empty,
      full => open,
      prog_full => fifo_full,
      valid => fifo_data_vld);

  fifo_wr <= ctrl_vld_in or data_vld_in;
  fifo_din <= data_in & data_cnt_in & data_vld_in & ctrl_vld_in;

  fifo_rd <= (not wait_dn) and (not fifo_empty);
  data_out <= fifo_dout(68 downto 5);
  data_cnt_out <= fifo_dout(4 downto 2);
  data_vld_out <= fifo_dout(1) and fifo_data_vld;
  ctrl_vld_out <= fifo_dout(0) and fifo_data_vld;

  wait_up <= fifo_full;
  
end inputbuffer_a;
