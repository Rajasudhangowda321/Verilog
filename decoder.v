module decoder(I,D);
input [1:0] I;
output [3:0] D;
reg [3:0] D;
always @(I)
begin
if (I==2'B00) D=4'B0001;
else if (I==2'B01) D=4'B0010;
else if (I==2'B10) D=4'B0100;
else if (I==2'B11) D=4'B1000;
else D=4'BZZZZ;
end
endmodule
module decoder_tb;
reg [1:0]I;wire [3:0]D;
decoder d(.I(I),.D(D));
initial begin
 #10 $monitor($time,"I=%b,D=%b",I,D);
 #10 I=00;
 #10 I=01;
 #10 I=10;
 #10 I=11;
 #10 $finish;
end
endmodule 
