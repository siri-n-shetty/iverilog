module norgate(
    input a,
    input b,
    output y
);

assign y = !(a | b);
endmodule