module logic_gate(a,b,y);
 input a,b;
 output[0:6]y;
 assign y[0]=~a;
 assign y[1]=a&b;
 assign y[2]=a|b;
 assign y[3]=~(a&b);
 assign y[4]=~(a|b);
 assign y[5]=a^b;
 assign y[6]=~(a^b);
endmodule
module testbench;
 reg a,b;wire[0:6] y;
 logic_gate lg(a,b,y);
 initial begin
  #10 $monitor($time,"a=%b,b=%b,y=%b",a,b,y);
  #10 a=0;b=0;
  #10 a=0;b=1;
  #10 a=1;b=0;
  #10 a=1;b=1;
  #10 $finish;
 end
endmodule 
