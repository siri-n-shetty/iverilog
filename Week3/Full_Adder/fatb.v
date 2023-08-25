module fulladder_tb; 
    reg aa, bb, cc; 
    wire ss, cy; 
    fulladder add1 ( .a(aa), .b(bb), .cin(cc), .sum(ss), .cout(cy) ); 
    initial begin
        #0 aa = 1'b0; bb = 1'b0; cc = 1'b0; 
        #5 aa = 1'b0; bb = 1'b0; cc = 1'b1; 
        #5 aa = 1'b0; bb = 1'b0; cc = 1'b1;
        #5 aa = 1'b0; bb = 1'b1; cc = 1'b0; 
        #5 aa = 1'b0; bb = 1'b1; cc = 1'b1; 
        #5 aa = 1'b1; bb = 1'b0; cc = 1'b0; 
        #5 aa = 1'b1; bb = 1'b0; cc = 1'b1; 
        #5 aa = 1'b1; bb = 1'b1; cc = 1'b0; 
        #5 aa = 1'b1; bb = 1'b1; cc = 1'b1; 
    end
    initial begin 
        $monitor($time, "a=%b, b= %b, c= %b,sum= %b,carry= %b", aa, bb, cc, ss, cy); 
    end 
    initial begin 
        $dumpfile("fulladder.vcd"); 
        $dumpvars(0, fulladder_tb); 
    end 
endmodule