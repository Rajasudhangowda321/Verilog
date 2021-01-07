module encoderwp (i,d);
input [7:0]i;
output [2:0]d;
reg [2:0]d;
always@(i)
begin
 if(i[7]==1'b1)d=3'b111;
 else if(i[6]==1'b1)d=3'b110;
 else if(i[5]==1'b1)d=3'b101;
 else if(i[4]==1'b1)d=3'b100;
 else if(i[3]==1'b1)d=3'b011;
 else if(i[2]==1'b1)d=3'b010;
 else if(i[1]==1'b1)d=3'b001;
 else if(i[0]==1'b1)d=3'b000;
 else d=3'bzzz;
end
endmodule 
module encoderwp_tb;
reg [7:0]i;wire [2:0]d;
encoderwp uut(.i(i),.d(d));
initial begin
 #10 $monitor($time,"i=%b,d=%b",i,d);
 #10 i=8'b00000001;
 #10 i=8'b0000001x;
 #10 i=8'b000001xx;
 #10 i=8'b00001xxx;
 #10 i=8'b0001xxxx;
 #10 i=8'b001xxxxx;
 #10 i=8'b01xxxxxx;
 #10 i=8'b1xxxxxxx;
 #10 $finish;
end
endmodule 
