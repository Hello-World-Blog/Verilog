//Testbench for DUT(4-bit wide adder)
module tb;
reg [3:0] A,B;
wire [4:0] S;
 
fourbit_adder ink(S,A,B);
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
        A=15;
        B=15;
        #1;
        $display("A=%d B=%d -> binary_sum=%b -> decimal_sum=%d",
                  A,B,S,S);
        end
endmodule      