module and_bh(a,b,y);
 input a,b;output y;
 reg y;
 wire [1:0]x;
 assign x={a,b};
 always@x
 begin
	if(x==2'b00|x==2'b01|x==2'b10)
	y=1'b0;else y=1'b1;
 end
endmodule
module testbench_andg;
 reg c,d;wire z;
 and_gate AG(.a(c),.b(d),.y(z));
 initial begin
   $monitor($time,"c=%b,d=%b,z=%b",c,d,z);
   #10 c=0;d=0;
   #10 c=0;d=1;
   #10 c=1;d=0;
   #10 c=1;d=1;
   #10 $finish; 
 end
endmodule
