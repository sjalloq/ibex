// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

module clkgen (
    input IO_CLK,
    input IO_RST_N,
    output clk_sys,
    output rst_sys_n
);
   
   // ICE40UP HSOSC
   SB_HFOSC 
      u_osc (.CLKHFEN (1'b1),
             .CLKHFPU (1'b1),
             .CLKHF   (clk_sys) ) ;

   
   // outputs
   assign rst_sys_n = IO_RST_N;

   // Helper code
   wire unused_ok = &{1'b0,
                     IO_CLK,
                     1'b0};

endmodule
