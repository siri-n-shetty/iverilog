module not_gate;
    reg a;
    wire y;
    not not_gate(y, a);
    initial begin
        #0 a = 0;
        #5 a = 1;
    end
    initial begin
        $monitor($time, "a = %b, y = %b", a, y);
    end
    initial begin
        $dumpfile("not_gate.vcd");
        $dumpvars(0, not_gate);
    end
endmodule