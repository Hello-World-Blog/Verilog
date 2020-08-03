module Full_Adder(cout,sum,a,b,cin);
input a,b,cin;
output cout,sum;

xor G1 (sum,a,b,cin);
and G2 (G2_out,a,b);
and G3 (G3_out,b,cin);
and G4 (G4_out,a,cin);
or  G5 (cout,G2_out,G3_out,G4_out);

endmodule

