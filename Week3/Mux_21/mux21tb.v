module TB;
    reg A, B, S;
    wire X;
    mux2 newMUX(.i0(A), .i1(B), .j(S), .o(X));
    
    initial begin
        S = 1'b0; A = 1'b0; B = 1'b0;
        #5 S = 1'b0; A = 1'b0; B = 1'b1;
        #5 S = 1'b0; A = 1'b1; B = 1'b0;
        #5 S = 1'b0; A = 1'b1; B = 1'b1;
        #5 S = 1'b1; A = 1'b0; B = 1'b0;
        #5 S = 1'b1; A = 1'b0; B = 1'b1;
        #5 S = 1'b1; A = 1'b1; B = 1'b0;
        #5 S = 1'b1; A = 1'b1; B = 1'b1;
    end
    initial begin 
        $monitor("Time = %0t: A = %b, B = %b, S = %b, X = %b", $time, A, B, S, X);
    end
    initial begin
        $dumpfile("MUX2_test.vcd");
        $dumpvars(0,TB);
    end
endmodule
