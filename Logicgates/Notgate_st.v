module notgate_st(a,y);
 input a;output y;
 wire s1;
 not n1(y,a);
endmodule

module testbench_notg;
 reg a;wire y;
 not_gate NG(a,y);
 initial begin
   $display($time,"a=%b,y=%b",a,y);
   #10 a=0;
   #10 a=1;
   #10 $finish;
 end
endmodule
