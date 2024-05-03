module IF_Stage(
    input clk, reset,
    output reg [31:0] instruction,
    output reg [31:0] next_pc
);
    reg [31:0] pc;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc <= 32'h00000000; // Start address
        end else begin
            pc <= pc + 4; // Increment PC
        end
    end

    always @(*) begin
        // Assuming instruction memory here is just a placeholder
        instruction = {6'b000000, 5'b00000, 5'b00000, 5'b00000, 5'b00000, 6'b100000}; // NOP (example)
        next_pc = pc + 4;
    end
endmodule
