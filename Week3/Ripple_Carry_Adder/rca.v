module fulladdR ( 
    input wire [3:0] a, b, 
    input wire cin, 
    output wire [3:0] sum,
    output wire cout 
);

wire [2:0] c; 

fulladd u0 ( 
    a[0], b[0], cin, sum[0], cout0 
); 

fulladd u1 ( 
    a[1], b[1], cout0, sum[1], cout1 
); 

fulladd u2 ( 
    a[2], b[2], cout1, sum[2], cout2 
); 

fulladd u3 ( 
    a[3], b[3], cout2, sum[3], cout 
); 

endmodule