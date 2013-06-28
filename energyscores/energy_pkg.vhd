
-- File: energy_pkg.vhd
-- Date: 13 November 2009
-- Project: Zuker 
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This file defines constants for the Zuker energy model

library ieee;  
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;

package energy_pkg is

  -- maximum interior loop size
  constant MAX_INTERIOR_LOOP_SIZE : integer := 30;

  -- maximum hairpin loop size
  constant MAX_HAIRPIN_LOOP_SIZE  : integer := 255;

  -- maximum type of base pairs: 0 -- 6
  constant MAX_BASE_PAIRS         : integer := 7;

  -- positive infinity: a few values below +32767 because we may add energies
  -- in some calculations, after which we do not want the number to overflow
  constant PVE_INFINITY           : slv(CELL_WIDTH-1 downto 0) := x"7000";

  -- TerminalAU = 50
  constant E_TERMINAL_AU  : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(50, CELL_WIDTH);

  -- special case tetra loop energies
  constant E_HAIRPIN_TETRA_1  : slv(CELL_WIDTH-1 downto 0)
                                := conv_std_logic_vector(-300, CELL_WIDTH);
  constant E_HAIRPIN_TETRA_2  : slv(CELL_WIDTH-1 downto 0)
                                := conv_std_logic_vector(-250, CELL_WIDTH);
  constant E_HAIRPIN_TETRA_3  : slv(CELL_WIDTH-1 downto 0)
                                := conv_std_logic_vector(-200, CELL_WIDTH);
  constant E_HAIRPIN_TETRA_4  : slv(CELL_WIDTH-1 downto 0)
                                := conv_std_logic_vector(-150, CELL_WIDTH);
  constant E_HAIRPIN_TETRA_X  : slv(CELL_WIDTH-1 downto 0)
                                := conv_std_logic_vector(0, CELL_WIDTH);

  -- ebistacking energies
  constant E_EBISTACKING_RTYPE12_UU : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(-70, CELL_WIDTH);
  constant E_EBISTACKING_RTYPE12_GA : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(-110, CELL_WIDTH);
  constant E_EBISTACKING_RTYPE36_UU : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(0, CELL_WIDTH);
  constant E_EBISTACKING_RTYPE36_GA : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(-40, CELL_WIDTH);
  constant E_EBISTACKING_RTYPE36_XX : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(70, CELL_WIDTH);
  constant E_EBISTACKING_RTYPEXX_XX : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(0, CELL_WIDTH);

  -- closing energies
  constant E_CLOSING_RTYPE36  : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(430, CELL_WIDTH);
  constant E_CLOSING_RTYPEXX  : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(380, CELL_WIDTH);

  -- P->MLbase (b) is zero
  constant E_MLBASE           : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(0, CELL_WIDTH);

  -- delta energies
  constant E_DELTA_RTYPE36  : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(90, CELL_WIDTH);
  constant E_DELTA_RTYPEXX  : slv(CELL_WIDTH-1 downto 0)
                              := conv_std_logic_vector(40, CELL_WIDTH);

  -- dangle3 energies
  type E_DANGLE3_1_T is array (0 to RESIDUE_TYPES-1) of
                                 slv(CELL_WIDTH-1 downto 0);
  type E_DANGLE3_T is array (0 to MAX_BASE_PAIRS-1) of E_DANGLE3_1_T;

  constant E_DANGLE3 : E_DANGLE3_T :=
  (
    (
      x"0000", x"0000", x"0000", x"0000"
    ),
    (
      x"FF92", x"FFD8", x"FF7E", x"FFC4"
    ),
    (
      x"FF56", x"FFB0", x"FF56", x"FF88" 
    ),
    (
      x"FFBA", x"FFF6", x"FFBA", x"FFF6"
    ),
    (
      x"FFB0", x"FFCE", x"FFB0", x"FFC4" 
    ),
    (
      x"FFBA", x"FFF6", x"FFBA", x"FFF6" 
    ),
    (
      x"FFB0", x"FFCE", x"FFB0", x"FFC4" 
    )
  );

  -- dangle3 energy + closing + MLintern
  constant E_DANGLE3_CLOSING : E_DANGLE3_T :=
  (
    (
      x"017C", x"017C", x"017C", x"017C"
    ),
    (
      x"010E", x"0154", x"00FA", x"0140"
    ),
    (
      x"00D2", x"012C", x"00D2", x"0104"
    ),
    (
      x"0168", x"01A4", x"0168", x"01A4"
    ),
    (
      x"015E", x"017C", x"015E", x"0172"
    ),
    (
      x"0168", x"01A4", x"0168", x"01A4"
    ),
    (
      x"015E", x"017C", x"015E", x"0172"
    )
  );

  -- dangle3 energy + MLintern
  constant E_DANGLE3_MLINTERN : E_DANGLE3_T :=
  (
    (
      x"0028", x"0028", x"0028", x"0028"
    ),
    (
      x"FFBA", x"0000", x"FFA6", x"FFEC"
    ),
    (
      x"FF7E", x"FFD8", x"FF7E", x"FFB0"
    ),
    (
      x"0014", x"0050", x"0014", x"0050"
    ),
    (
      x"000A", x"0028", x"000A", x"001E"
    ),
    (
      x"0014", x"0050", x"0014", x"0050"
    ),
    (
      x"000A", x"0028", x"000A", x"001E"
    )
  );

  -- dangle5 energies
  type E_DANGLE5_1_T is array (0 to RESIDUE_TYPES-1) of
                                 slv(CELL_WIDTH-1 downto 0);
  type E_DANGLE5_T is array (0 to MAX_BASE_PAIRS-1) of E_DANGLE5_1_T;

  constant E_DANGLE5 : E_DANGLE5_T :=
  (
    (
      x"0000", x"0000", x"0000", x"0000"
    ),
    (
      x"FFCE", x"FFE2", x"FFEC", x"FFF6"
    ),
    (
      x"FFEC", x"FFE2", x"0000", x"0000"
    ),
    (
      x"FFE2", x"FFE2", x"FFD8", x"FFEC"
    ),
    (
      x"FFE2", x"FFF6", x"FFEC", x"FFEC"
    ),
    (
      x"FFE2", x"FFE2", x"FFD8", x"FFEC"
    ),
    (
      x"FFE2", x"FFF6", x"FFEC", x"FFEC"
    )
  );

  -- dangle5 energy + closing + MLintern
  constant E_DANGLE5_CLOSING : E_DANGLE5_T :=
  (
    (
      x"017C", x"017C", x"017C", x"017C"
    ),
    (
      x"014A", x"015E", x"0168", x"0172"
    ),
    (
      x"0168", x"015E", x"017C", x"017C"
    ),
    (
      x"0190", x"0190", x"0186", x"019A"
    ),
    (
      x"0190", x"01A4", x"019A", x"019A"
    ),
    (
      x"0190", x"0190", x"0186", x"019A"
    ),
    (
      x"0190", x"01A4", x"019A", x"019A"
    )
  );

  -- dangle5 energy + MLintern
  constant E_DANGLE5_MLINTERN : E_DANGLE5_T :=
  (
    (
      x"0028", x"0028", x"0028", x"0028"
    ),
    (
      x"FFF6", x"000A", x"0014", x"001E"
    ),
    (
      x"0014", x"000A", x"0028", x"0028"
    ),
    (
      x"003C", x"003C", x"0032", x"0046"
    ),
    (
      x"003C", x"0050", x"0046", x"0046"
    ),
    (
      x"003C", x"003C", x"0032", x"0046"
    ),
    (
      x"003C", x"0050", x"0046", x"0046"
    )
  );

  -- ebiasymmetry energies
  type E_EBIASYMMETRY_T is array (0 to MAX_INTERIOR_LOOP_SIZE) of
                                 slv(CELL_WIDTH-1 downto 0);

  constant E_EBIASYMMETRY : E_EBIASYMMETRY_T :=
  (
    x"0000", x"0032", x"0064", x"0096", x"00C8", x"00FA", x"012C", x"012C",
    x"012C", x"012C", x"012C", x"012C", x"012C", x"012C", x"012C", x"012C",
    x"012C", x"012C", x"012C", x"012C", x"012C", x"012C", x"012C", x"012C",
    x"012C", x"012C", x"012C", x"012C", x"012C", x"012C", x"012C"
  );

  -- ebisize energies
  type E_EBISIZE_T is array (0 to MAX_INTERIOR_LOOP_SIZE) of
                                 slv(CELL_WIDTH-1 downto 0);

  constant E_EBISIZE : E_EBISIZE_T :=
  (
    PVE_INFINITY, PVE_INFINITY, x"019A", x"01FE", x"00AA", x"00B4", x"00C8",
      x"00DC",
    x"00E6", x"00F0", x"00FA", x"0104", x"010E", x"0116", x"011E", x"0126",
    x"012D", x"0133", x"0139", x"013F", x"0145", x"014A", x"014F", x"0154",
    x"0159", x"015D", x"0161", x"0165", x"0169", x"016D", x"0171"
  );

  -- ebbsize energies
  type E_EBBSIZE_T is array (0 to MAX_INTERIOR_LOOP_SIZE) of
                                 slv(CELL_WIDTH-1 downto 0);

  constant E_EBBSIZE : E_EBBSIZE_T :=
  (
    PVE_INFINITY, x"017C", x"0118", x"0140", x"0168", x"0190", x"01B8", x"01CB",
    x"01D6", x"01E0", x"01EA", x"01F4", x"01FE", x"0207", x"020F", x"0216",
    x"021D", x"0224", x"022A", x"0230", x"0235", x"023B", x"0240", x"0244",
    x"0249", x"024D", x"0252", x"0256", x"025A", x"025D", x"0261"
  );

  -- stacking energies
  type E_STACKING_1_T is array (0 to MAX_BASE_PAIRS-1) of
                                 slv(CELL_WIDTH-1 downto 0);
  type E_STACKING_T is array (0 to MAX_BASE_PAIRS-1) of E_STACKING_1_T;

  constant E_STACKING : E_STACKING_T :=
  (
    (
      PVE_INFINITY, PVE_INFINITY, PVE_INFINITY, PVE_INFINITY,
      PVE_INFINITY, PVE_INFINITY, PVE_INFINITY
    ),
    (
      PVE_INFINITY, x"FF10", x"FEB6", x"FF2E", x"FF74", x"FF2E", x"FF2E"
    ),
    (
      PVE_INFINITY, x"FEB6", x"FEAC", x"FF06", x"FF6A", x"FF24", x"FF10"
    ),
    (
      PVE_INFINITY, x"FF2E", x"FF06", x"0082", x"FFCE", x"FF74", x"FF7E"
    ),
    (
      PVE_INFINITY, x"FF74", x"FF6A", x"FFCE", x"001E", x"FFC4", x"FF9C"
    ),
    (
      PVE_INFINITY, x"FF2E", x"FF24", x"FF74", x"FFC4", x"FF92", x"FFA6"
    ),
    (
      PVE_INFINITY, x"FF2E", x"FF10", x"FF7E", x"FF9C", x"FFA6", x"FF7E"
    )
  );
  
  -- hairpin size energies
  type E_HAIRPINSIZE_T is array (0 to MAX_HAIRPIN_LOOP_SIZE) of
                                 slv(CELL_WIDTH-1 downto 0);

  constant E_HAIRPINSIZE : E_HAIRPINSIZE_T :=
  (
    PVE_INFINITY, PVE_INFINITY, PVE_INFINITY, x"023A", x"0230", x"0230",
    x"021C", x"024E", x"0230", x"0280", x"028A", x"0294", x"029E", x"02A6",
    x"02AE", x"02B6", x"02BD", x"02C3", x"02C9", x"02CF", x"02D5", x"02DA",
    x"02DF", x"02E4", x"02E8", x"02ED", x"02F1", x"02F5", x"02F9", x"02FD",
    x"0301", x"0304", x"0307", x"030B", x"030E", x"0311", x"0314", x"0317",
    x"031A", x"031D", x"0320", x"0322", x"0325", x"0327", x"032A", x"032C",
    x"032F", x"0331", x"0333", x"0335", x"0338", x"033A", x"033C", x"033E",
    x"0340", x"0342", x"0344", x"0346", x"0348", x"0349", x"034B", x"034D",
    x"034F", x"0351", x"0352", x"0354", x"0356", x"0357", x"0359", x"035A",
    x"035C", x"035D", x"035F", x"0360", x"0362", x"0363", x"0365", x"0366",
    x"0368", x"0369", x"036A", x"036C", x"036D", x"036E", x"0370", x"0371",
    x"0372", x"0373", x"0375", x"0376", x"0377", x"0378", x"0379", x"037B",
    x"037C", x"037D", x"037E", x"037F", x"0380", x"0381", x"0382", x"0383",
    x"0384", x"0386", x"0387", x"0388", x"0389", x"038A", x"038B", x"038C",
    x"038D", x"038E", x"038F", x"0390", x"0390", x"0391", x"0392", x"0393",
    x"0394", x"0395", x"0396", x"0397", x"0398", x"0399", x"039A", x"039A",
    x"039B", x"039C", x"039D", x"039E", x"039F", x"039F", x"03A0", x"03A1",
    x"03A2", x"03A3", x"03A4", x"03A4", x"03A5", x"03A6", x"03A7", x"03A7",
    x"03A8", x"03A9", x"03AA", x"03AA", x"03AB", x"03AC", x"03AD", x"03AD",
    x"03AE", x"03AF", x"03B0", x"03B0", x"03B1", x"03B2", x"03B2", x"03B3",
    x"03B4", x"03B4", x"03B5", x"03B6", x"03B6", x"03B7", x"03B8", x"03B8",
    x"03B9", x"03BA", x"03BA", x"03BB", x"03BC", x"03BC", x"03BD", x"03BD",
    x"03BE", x"03BF", x"03BF", x"03C0", x"03C1", x"03C1", x"03C2", x"03C2",
    x"03C3", x"03C4", x"03C4", x"03C5", x"03C5", x"03C6", x"03C6", x"03C7",
    x"03C8", x"03C8", x"03C9", x"03C9", x"03CA", x"03CA", x"03CB", x"03CB",
    x"03CC", x"03CD", x"03CD", x"03CE", x"03CE", x"03CF", x"03CF", x"03D0",
    x"03D0", x"03D1", x"03D1", x"03D2", x"03D2", x"03D3", x"03D3", x"03D4",
    x"03D4", x"03D5", x"03D5", x"03D6", x"03D6", x"03D7", x"03D7", x"03D8",
    x"03D8", x"03D9", x"03D9", x"03DA", x"03DA", x"03DB", x"03DB", x"03DC",
    x"03DC", x"03DD", x"03DD", x"03DE", x"03DE", x"03DF", x"03DF", x"03DF",
    x"03E0", x"03E0", x"03E1", x"03E1", x"03E2", x"03E2", x"03E3", x"03E3",
    x"03E3", x"03E4", x"03E4", x"03E5", x"03E5", x"03E6", x"03E6", x"03E6",
    x"03E7", x"03E7"
  );

  -- hairpin stacking energies
  type E_HAIRPINMISMATCH_1_T is array (0 to 15) of
                                   slv(CELL_WIDTH-1 downto 0);
  type E_HAIRPINMISMATCH_T is array (0 to MAX_BASE_PAIRS-1) of
                                 E_HAIRPINMISMATCH_1_T;

  constant E_HAIRPINMISMATCH : E_HAIRPINMISMATCH_T :=
  (
    (
      x"0000", x"0000", x"0000", x"0000", 
      x"0000", x"0000", x"0000", x"0000", 
      x"0000", x"0000", x"0000", x"0000", 
      x"0000", x"0000", x"0000", x"0000"
    ),

    (
      x"FF6A", x"FF6A", x"FF74", x"FF4C", 
      x"FF9C", x"FFA6", x"FEDE", x"FFB0", 
      x"FF24", x"FF38", x"FF60", x"FF92", 
      x"FF56", x"FF74", x"FF4C", x"FF38"
    ),

    (
      x"FF92", x"FF6A", x"FF7E", x"FF2E", 
      x"FF92", x"FFBA", x"FF10", x"FFCE", 
      x"FF10", x"FEDE", x"FF74", x"FF88", 
      x"FF42", x"FF9C", x"FF24", x"FF6A"
    ),

    (
      x"0014", x"FFCE", x"FFE2", x"FFE2", 
      x"FFF6", x"FFEC", x"FF6A", x"FFEC", 
      x"FFA6", x"FF92", x"FFE2", x"0000", 
      x"FFE2", x"FFE2", x"FFD8", x"FF92"
    ),

    (
      x"FFCE", x"FFE2", x"FFC4", x"FFCE", 
      x"FFEC", x"FFF6", x"FF56", x"0000", 
      x"FFB0", x"FF88", x"FFE2", x"FFBA", 
      x"FFC4", x"FFF6", x"FFC4", x"FFB0"
    ),

    (
      x"FFE2", x"FFCE", x"FFE2", x"FFE2", 
      x"FFF6", x"FFEC", x"FF6A", x"FFEC", 
      x"FF92", x"FF88", x"FFEC", x"0014", 
      x"FFE2", x"FFE2", x"FFC4", x"FF92"
    ),

    (
      x"FFCE", x"FFE2", x"FFC4", x"FFCE", 
      x"FFEC", x"FFF6", x"FF88", x"0000", 
      x"FF74", x"FF88", x"FFBA", x"FFEC", 
      x"FFE2", x"FFF6", x"FFCE", x"FFB0"
    )
  );


end package energy_pkg;

package body energy_pkg is
  
end package body energy_pkg;
