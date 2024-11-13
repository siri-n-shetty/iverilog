module xnor_gate;
    reg a, b;
    wire y;
    xnorgate xnor_gate(a, b, y);
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
        $dumpfile("xnor_gate.vcd");
        $dumpvars(0, xnor_gate);
    end
endmodule