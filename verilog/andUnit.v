module andUnit(
    input [7:0] A,
    input [7:0] B,
    output reg [7:0] C
);

always @* begin
    C = A & B; // Bitwise AND operation
end

endmodule

module orUnit(
    input [7:0] A,
    input [7:0] B,
    output reg [7:0] C
);

always @* begin
    C = A | B; // Bitwise AND operation
end

endmodule


