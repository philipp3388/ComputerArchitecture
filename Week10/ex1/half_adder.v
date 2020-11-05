module half_adder(
	input x,
	input y,
	output s,
	output carry
);
assign s = x ^ y;
assign carry = x & y;
endmodule	