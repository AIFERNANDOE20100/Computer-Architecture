
`include "ALU.v"


module ALU_TB;

    // Inputs
    reg [7:0] DATA1;
    reg [7:0] DATA2;
    reg [2:0] SELECT;

    // Outputs
    wire [7:0] RESULT;

    // Instantiate the ALU module
    ALU ALU_inst (
        .DATA1(DATA1),
        .DATA2(DATA2),
        .SELECT(SELECT),
        .RESULT(RESULT)
    );

    // Test vectors
    initial begin

    $dumpfile("akakshmodaya.vcd");
    $dumpvars(0, ALU_TB);


        // Initialize inputs
        DATA1 = 8'b10101010;
        DATA2 = 8'b01010101;
        SELECT = 3'b000;

        // Apply stimulus
        #10 DATA1 = 8'b11110000;
        #10 DATA2 = 8'b00001111;
        #10 SELECT = 3'b001;
        #10 SELECT = 3'b010;
        #10 SELECT = 3'b011;

        // Add more test cases as needed...

        // Monitor
        $display("Time=%t, DATA1=%h, DATA2=%h, SELECT=%b, RESULT=%h", $time, DATA1, DATA2, SELECT, RESULT);
        
        // End simulation
        #10 $finish;
    end

endmodule
