module tb;
reg [1:0] A,B;
wire [2:0] S;
integer i;
twobit_adder ins(S,A,B);
initial 
   begin
		repeat(5)
		begin
		A=$random;
		B=$random;
		#1;
		$display("A=%d B=%d -> binary_sum=%b -> decimal_sum=%d",
		          A,B,S,S);
		end
		A=3;
		B=3;
		#1;
		$display("A=%d B=%d -> binary_sum=%b -> decimal_sum=%d",
		          A,B,S,S);
		end
endmodule	   


