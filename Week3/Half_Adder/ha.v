module halfadder (
    input wire a, b, 
    output wire sum, c 
);

xor x0 (sum, a, b); 
and a0 (c, a, b); 
endmodule