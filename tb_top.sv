`default_nettype none
module tb_blink;
   logic clk;
   logic led;

   blink uud (.*);
   
   initial begin
      $dumpfile("waves.vcd");
      $dumpvars(0, tb_blink);
      clk = 0;
      #1800 $finish();
   end
   always #5 clk++;
endmodule // tb_blink
`default_nettype wire
