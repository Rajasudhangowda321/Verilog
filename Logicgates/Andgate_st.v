module andgate_st(a,b,y);
 input a,b;output y;
 and (y,a,b);
endmodule

module testbench_andg;
 reg c,d;wire z;
 andgate_st AG(.a(c),.b(d),.y(z));
 initial begin
   $monitor($time,"c=%b,d=%b,z=%b",c,d,z);
   #10 c=0;d=0;
   #10 c=0;d=1;
   #10 c=1;d=0;
   #10 c=1;d=1;
   #10 $finish; 
 end
endmodule
