module TB;
    reg [0:3]ii;
    reg s0;reg s1;
    wire yy;
    mux4 newMUX(.i(ii), .j0(s0),.j1(s1),.o(yy));
    initial begin
        ii = 4'b0000;s0=1'b0;s1=1'b0;
        #5      ii = 4'b1000;s0=1'b0;s1=1'b0;
        #5      ii = 4'b0000;s0=1'b0;s1=1'b1;
        #5      ii = 4'b0100;s0=1'b0;s1=1'b1;
        #5      ii = 4'b0000;s0=1'b1;s1=1'b0;
        #5      ii = 4'b0010;s0=1'b1;s1=1'b0;
        #5      ii = 4'b0000;s0=1'b1;s1=1'b1;
        #5      ii = 4'b0001;s0=1'b1;s1=1'b1;
    end
    initial begin
        $monitor("Time = %0t: ii = %b, s0 = %b, s1 = %b, yy = %b", $time, ii, s0, s1, yy);
    end
    initial begin
        $dumpfile("MUX4_test.vcd");
        $dumpvars(0, TB);
    end
endmodule
