
-- File: zuker_pkg.vhd
-- Date: 19 Nov 2009
-- Project: Zuker 
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This file defines the package header for the Zuker systolic array.

library ieee;  
use ieee.std_logic_1164.all;

package zuker_pkg is

  -- aliases
  alias sl is std_logic;
  alias slv is std_logic_vector;

  constant ZEROES               : slv(1023 downto 0) := (others => '0');
  constant ONES                 : slv(1023 downto 0) := (others => '1');

  ---------------------------------------------------------------------------
  -- design constants
  ---------------------------------------------------------------------------

  -- number of zuker arrays running simultaneously
  constant NO_UNITS             : integer := 1;

  -- maximum length of sequence that can be processed on this array
  -- (SEQ_LEN - 1) should be divisible by 2
  --constant SEQ_LEN              : integer := 63;
  --constant SEQ_LEN              : integer := 99;
  --constant SEQ_LEN              : integer := 121;
  --constant SEQ_LEN              : integer := 147;  -- without SLR, without bram
  --constant SEQ_LEN              : integer := 189;  -- with SLR, without bram
  --constant SEQ_LEN              : integer := 251;
  --constant SEQ_LEN              : integer := 261;
  constant SEQ_LEN              : integer := 267;
  --constant SEQ_LEN              : integer := 281;

  -- number of residues received per clock from input stream
  constant RESIDUES_PER_CLK     : integer := 21;

  -- number of residues to store for the zuker computation
  -- this is >= length of sequence
  -- multiple of 64 bits
  --constant NO_RESIDUES          : integer := 63;
  --constant NO_RESIDUES          : integer := 105;
  --constant NO_RESIDUES          : integer := 126;
  --constant NO_RESIDUES          : integer := 147;
  --constant NO_RESIDUES          : integer := 189;
  --constant NO_RESIDUES          : integer := 252;
  constant NO_RESIDUES          : integer := 273;
  --constant NO_RESIDUES          : integer := 294;

  -- number of sequences to buffer before sending to the array
  -- used when lambda u is greater than 1
  constant SEQUENCES_TO_BUFFER  : integer := 1;

  -- bits for residue
  constant RESIDUE_WIDTH        : integer := 3;

  -- number of distinct residues: A, C, G, U
  constant RESIDUE_TYPES        : integer := 4;

  -- bits for cell score
  constant CELL_WIDTH           : integer := 16;

  -- bits for hairpin size
  constant HAIRPIN_SIZE_WIDTH   : integer := 8;

  -- maximum size of an internal/bulge loop
  constant MAXLOOP_SIZE         : integer := 30;

  -- invalid residue type
  constant INVALID_RESIDUE      : slv(RESIDUE_WIDTH-1 downto 0) := "111";

  -- maximum number of PEs that may use block rams
  -- this value is device dependent
  --constant MAX_BRAM_PE          : integer := 0;   -- used if we do not want to use brams
  --constant MAX_BRAM_PE          : integer := 21;   -- used for 2 units of size 121
  constant MAX_BRAM_PE          : integer := 69;   -- used for all others

  -- number of delay registers to use after block ram fifos are used to
  -- delay data links.  this should help during retiming to improve the
  -- performance of each PE
  constant NO_RETIMING_REGS     : integer := 3;   -- must be at least 3
  constant NO_RETIMING_REGS_PE2 : integer := 5;

  -- if false, all delay elements will not have a reset signal
  -- when false, delay elements are mapped into efficient shift registers
  constant NEEDS_RESET          : boolean := false;

  ---------------------------------------------------------------------------
  -- design types
  ---------------------------------------------------------------------------

  -- query residues array for all PEs
  type RESIDUE_ARRAY is array (1 to NO_RESIDUES) of
         slv(RESIDUE_WIDTH-1 downto 0);

  -- multiple sequences into the underutilized array
  type BUFF_SEQUENCE_ARRAY is array (0 to SEQUENCES_TO_BUFFER - 1) of
         RESIDUE_ARRAY;

  -- sequences for multiple units
  type UNIT_RESIDUE_ARRAY is array (0 to NO_UNITS - 1) of RESIDUE_ARRAY;

  -- scores from multiple units
  type SCORE_ARRAY is array (0 to NO_UNITS - 1) of slv(31 downto 0);

end package zuker_pkg;

package body zuker_pkg is
  
end package body zuker_pkg;
