module and_gate(a,b,y);
  input a,b;
  output y;
  assign y=a&b;
endmodule
module testbench_andg;
 reg a,b;wire y;
 integer i;
 and_gate AG(a,b,y);
 initial begin
  for (i=0;i<5;i=i+1)
   begin
    {a,b}=i;#10;
    $display("T=%2d,a=%b,b=%b,y=%b",$time,a,b,y);
   end
  #10 $finish;
 end
endmodule
