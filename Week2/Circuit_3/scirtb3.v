module simple_circuit3_tb;
    reg A, B, C;
    wire Z;
    simple_circuit3 M1 (A, B, C, Z);
    initial begin
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;

        #20 A = 1'b0;
        B = 1'b0;
        C = 1'b1;

        #20 A = 1'b0;
        B = 1'b1;
        C = 1'b0;

        #20 A = 1'b0;
        B = 1'b1;
        C = 1'b1;

        #20 A = 1'b1;
        B = 1'b0;
        C = 1'b0;

        #20 A = 1'b1;
        B = 1'b0;
        C = 1'b1;

        #20 A = 1'b1;
        B = 1'b1;
        C = 1'b0;

        #20 A = 1'b1;
        B = 1'b1;
        C = 1'b1;
    end
    initial begin
        $monitor($time, "A = %b, B = %b, C = %b, Z = %b", A, B, C, Z);
    end
    initial begin
        $dumpfile("s3.vcd");
        $dumpvars(0, simple_circuit3_tb);
    end
endmodule