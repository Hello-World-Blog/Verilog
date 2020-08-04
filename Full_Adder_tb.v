module tb;
reg a,b,cin;
wire cout,sum;
integer i;
Full_Adder g1(cout,sum,a,b,cin);
initial 
   begin
		for(i=0;i<=7;i=i+1)
		begin
		{a,b,cin}=i;
		#1;
		$display("a=%d b=%d cin=%d -> binary_sum=%b -> decimal_sum=%d",
		          a,b,cin,{cout,sum},{cout,sum});
		end
		end
endmodule	   


