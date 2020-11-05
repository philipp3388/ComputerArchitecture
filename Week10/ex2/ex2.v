module ex2
(
input x,
input y,
input in,

output s,
output out
);

wire s1, c1, s2, c2;
half_adder hs(x, y, s1, c1);
half_adder hr(in, s1, s2, c2);
assign s = s2;
assign out = c2 | c1;
endmodule