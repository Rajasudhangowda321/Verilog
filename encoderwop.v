module encoderwop (i,d);
input [7:0]i;
output [2:0]d;
reg [2:0]d;
always@(i)
begin
 case(i)
 8'd1:d=3'd0;
 8'd2:d=3'd1;
 8'd4:d=3'd2;
 8'd8:d=3'd3;
 8'd16:d=3'd4;
 8'd32:d=3'd5;
 8'd64:d=3'd6;
 8'd128:d=3'd7;
 default:d=3'bzzz;
 endcase
end
endmodule 
module encoderwop_tb;
reg [7:0]i;wire [2:0]d;
encoderwop uut(.i(i),.d(d));
initial begin
 #10 $monitor($time,"i=%b,d=%b",i,d);
 #10 i=8'b10000000;
 #10 i=8'b01000000;
 #10 i=8'b00100000;
 #10 i=8'b00010000;
 #10 i=8'b00001000;
 #10 i=8'b00000100;
 #10 i=8'b00000010;
 #10 i=8'b00000001;
 #10 $finish;
end
endmodule 
