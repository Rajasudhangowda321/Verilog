module Xnor_gate(a,b,y);
 input a,b;
 output y;
 assign y=~(a^b);
endmodule
module testbench_xnorg;
 reg a,b;wire y;
 Xnor_gate Xnorg(a,b,y);
 initial begin
  $display($time,"a=%b,b=%b,y=%b",a,b,y);
  #10 a=0;b=0;
  #10 a=0;b=1;
  #10 a=1;b=0;
  #10 a=1;b=1;
  #10 $finish;
end
endmodule 
