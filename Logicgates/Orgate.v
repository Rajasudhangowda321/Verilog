module and_gate(a,b,y);
  input a,b;
  output y;
  assign y=a|b;
endmodule
module testbench_org;
 reg c,d;wire z;
 and_gate OG(.a(c),.b(d),.y(z));
 initial begin
   $monitor($time,"c=%b,d=%b,z=%b",c,d,z);
   #10 c=0;d=0;
   #10 c=0;d=1;
   #10 c=1;d=0;
   #10 c=1;d=1;
   #10 $finish; 
 end
endmodule
