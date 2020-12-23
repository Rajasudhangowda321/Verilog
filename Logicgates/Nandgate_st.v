module nandgate_st(a,b,y);
 input a,b;output y;
 nand (y,a,b);
endmodule

module testbench_nandg;
 reg a,b;wire y;
 nandgate_bh NandG(a,b,y);
 initial begin
  $display($time,"a=%b,b=%b,y=%b",a,b,y);
   #10 a=0;b=0;
   #10 a=0;b=1;
   #10 a=1;b=0;
   #10 a=1;b=1;
   #10 $finish;
 end
endmodule
