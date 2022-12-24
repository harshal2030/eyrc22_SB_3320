module And_Gate_Test_Bench;
reg A; reg B;
wire C;

AND_GATE uut (.A(A), .B(B), . c(C));

initial begin

A=0; B=0; #100;
A=0; B=1; #100;
A=1; B=0; #100;
A=1; B=1; #100;

end
endmodule
