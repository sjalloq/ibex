// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

module prim_clock_gating (
  input         clk_i,
  input         en_i,
  input         test_en_i,
  output logic  clk_o
);

  // There is no clock gate buffer in the Lattice IO library so bypass
  assign clk_o = clk_i;

  wire unused_ok = &{1'b0,
                     en_i,
                     test_en_i,
                     1'b0};

endmodule
