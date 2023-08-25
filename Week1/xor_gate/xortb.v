module xor_gate;
    reg a, b;
    wire y;
    xor xor_gate(y, a, b);
    initial begin
        #0 a = 0;
        b = 0;
        #5 a = 0;
        b = 1;
        #10 a = 1;
        b = 0;
        #15 a = 1;
        b = 1;
    end
    initial begin
        $monitor($time, "a = %b, b = %b, y = %b", a, b, y);
    end
    initial begin
        $dumpfile("xor_gate.vcd");
        $dumpvars(0, xor_gate);
    end
endmodule