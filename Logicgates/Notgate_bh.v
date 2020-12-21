module notgate_bh(a,y);
 input a;output y;
 reg y;wire x;
 assign x=a;
 always@ x
 begin
	if (x==1'b0)
	y=1'b1;else y=1'b0;
 end
endmodule
module testbench_notg;
 reg a;wire y;
 notgate_bh NG(a,y);
 initial begin
   $display($time,"a=%b,y=%b",a,y);
   #10 a=0;
   #10 a=1;
   #10 $finish;
 end
endmodule
