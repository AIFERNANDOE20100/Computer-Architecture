module  OR(DATA1,DATA2,RESULT);

    input wire [7:0] DATA1,DATA2;
    output [7:0] RESULT;

    assign RESULT = DATA1 | DATA2;


endmodule

module  AND(DATA1,DATA2,RESULT);

    input wire [7:0] DATA1,DATA2;
    output[7:0] RESULT;

    assign RESULT = DATA1 & DATA2;

endmodule


module  ADD(DATA1,DATA2,RESULT);

    input wire [7:0] DATA1,DATA2;
    output reg[7:0] RESULT;
    always @(*) begin
        if(DATA2<0)
            RESULT = DATA1 - DATA2;
        else
            RESULT = DATA1 + DATA2;
    end

endmodule

module  FORWARD(DATA1,DATA2,RESULT);

    input wire [7:0] DATA1,DATA2;
    output[7:0] RESULT;

    assign RESULT = DATA2;

endmodule








module ALU(DATA1,DATA2,SELECT,RESULT);
    //defining inputs
    input wire [7:0] DATA1,DATA2;
    input wire [2:0] SELECT;
    input CLK;

    //defining outputs
    output reg [7:0] RESULT;
    
    wire [7:0] FORWARD_RESULT;
    wire [7:0]  ADD_RESULT;
    wire [7:0]  AND_RESULT;
    wire [7:0]  OR_RESULT;


    FORWARD dut1(DATA1,DATA2,FORWARD_RESULT);
    ADD dut2(DATA1,DATA2,ADD_RESULT);
    AND dut3(DATA1,DATA2,AND_RESULT);
    OR dut4(DATA1,DATA2,OR_RESULT);


    always @(*) begin
        
        case(SELECT)
        3'b000 : #1 RESULT = FORWARD_RESULT;

        3'b001 : #2 RESULT = ADD_RESULT;

        3'b010 : #1 RESULT = AND_RESULT;

        3'b011 : #1 RESULT = OR_RESULT;
        endcase
    end

endmodule


