module xorgate_bh(a,b,y);
 input a,b;output y;
 reg y;wire[1:0]x;
 assign x={a,b};
 always@x
 begin
	if(x==2'b00|x==2'b11)
	y=1'b0;else y=1'b1;
 end
endmodule
module testbench_xorg;
 reg a,b;wire y;
 xorgate_bh Xorg(a,b,y);
 initial begin
  $display($time,"a=%b,b=%b,y=%b",a,b,y);
  #10 a=0;b=0;
  #10 a=0;b=1;
  #10 a=1;b=0;
  #10 a=1;b=1;
  #10 $finish;
end
endmodule 
