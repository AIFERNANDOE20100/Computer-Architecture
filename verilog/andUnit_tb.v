module andUnit_tb;

reg [7:0] A;
reg [7:0] B;
wire [7:0] C;

orUnit dut(
    .A(A),
    .B(B),
    .C(C)
);

initial begin
    // Provide input values
    A = 8'b10101010; // Example input
    B = 8'b11001100; // Example input

    // Wait some time for simulation
    #10;

    // Display output
    $display("A = %b, B = %b, C = %b", A, B, C);

    // End simulation
    $finish;
end

endmodule
