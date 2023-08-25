/* module mux4 (
    input wire [0:3] i , 
    input wire j1,j0,
    output wire o
);

wire t0,t1;
mux2 mux2_0 (t0,i[0],i[1]);
mux2 mux2_1 (t1,i[2],i[3]);
mux2 mux2_2 (o,t[0],t[1]);

endmodule
*/

module mux4(input wire [0:3] i, input wire j0, j1, output wire o);
    wire [0:1] s;
    assign s = j1 ? {j0, 1'b1} : {j0, 1'b0};
    
    assign o = (s == 2'b00) ? i[0] :
              (s == 2'b01) ? i[1] :
              (s == 2'b10) ? i[2] :
                            i[3];
endmodule