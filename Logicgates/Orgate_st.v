module orgate_st(a,b,y);
 input a,b;output y;
 or (y,a,b);
endmodule

module testbench_org;
 reg a,b;wire y;
 orgate_st org(a,b,y);
 initial begin
	$monitor($time,"a=%b,b=%b,y=%b",a,b,y);
	#10 a=0;b=0;
	#10 a=0;b=1;
	#10 a=1;b=0;
	#10 a=1;b=1;
	#10 $finish;
 end
endmodule
