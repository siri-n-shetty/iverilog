module halfadder_tb; 
    reg aa, bb; 
    wire ss, cy; 
    halfadder add1 ( aa, bb, ss, cy ); 
    initial begin
        aa = 1'b0; bb = 1'b0; 
        #5 aa = 1'b0; bb = 1'b1;
        #5 aa = 1'b1; bb = 1'b0; 
        #5 aa = 1'b1; bb = 1'b1; 
    end 
    initial begin 
        $monitor($time, "a=%b, b=%b,sum=%b,carry=%b", aa, bb, ss, cy);
    end
    initial begin 
        $dumpfile("halfadder.vcd"); 
        $dumpvars(0, halfadder_tb); 
    end 
endmodule