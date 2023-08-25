`timescale 1 ns / 100 ps 
`define TESTVECS 10 

module tb; 
    reg clk, reset; 
    reg [3:0] i0, i1; 
    reg cin; 
    wire [3:0] o; 
    wire cout; 
    reg [8:0] test_vecs[0:(`TESTVECS-1)]; 
    integer i; 
    initial begin 
        $dumpfile("rca_test.vcd"); 
        $dumpvars(0, tb); 
    end 
    initial begin 
        reset = 1'b1; 
        #12.5 reset = 1'b0; 
    end 
    initial clk = 1'b0; 
    always #5 clk = ~clk; 
    initial begin 
        test_vecs[0] = 9'b000000000; 
        test_vecs[1] = 9'b000000001;
        test_vecs[2] = 9'b000100010; 
        test_vecs[3] = 9'b000100011; 
        test_vecs[4] = 9'b001000100; 
        test_vecs[5] = 9'b101010110; 
        test_vecs[6] = 9'b101010111; 
        test_vecs[7] = 9'b110011010; 
        test_vecs[8] = 9'b111111100; 
        test_vecs[9] = 9'b111111101; 
    end 
    initial {i0, i1, cin, i} = 0; 
    fulladdR u0 ( i0, i1, cin, o, cout ); 
    initial begin 
        #6 
        for (i = 0; i < `TESTVECS; i = i + 1) begin 
            #10;
            {i0, i1, cin} = test_vecs[i]; 
        end 
        #100 $finish;
    end 
    always @(i0 or i1 or cin)
        $monitor( "At time = %t, i0=%b, i1=%b, cin=%b, Sum=%b, Carry=%b", $time, i0, i1, cin, o, cout );
endmodule
