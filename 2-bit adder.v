module fourbit_adder(S,A,B);
input [3:0] A,B;
output [4:0] S;
wire [4:0] S;
wire c0,c1,c2;
Full_Adder FA1 (c0,S[0],A[0],B[0],1'b0);
Full_Adder FA2 (c1,S[1],A[1],B[1],c0);
Full_Adder FA3 (c2,S[2],A[2],B[2],c1);
Full_Adder FA4 (S[4],S[3],A[3],B[3],c2);
endmodule