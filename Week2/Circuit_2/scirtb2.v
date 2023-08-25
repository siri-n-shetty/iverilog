module simple_circuit2_tb;
    reg A, B, C;
    wire D;
    simple_circuit2 M1 (A, B, C, D);
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
        $monitor($time, "A = %b, B = %b, C = %b, D = %b", A, B, C, D);
    end
    initial begin
        $dumpfile("s2.vcd");
        $dumpvars(0, simple_circuit2_tb);
    end
endmodule