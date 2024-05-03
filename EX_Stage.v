module EX_Stage(
    input [5:0] opcode,
    input [4:0] rs, rt, rd,
    input [15:0] immediate,
    output reg [31:0] alu_result
);
    always @(*) begin
        // Simple ALU operation: addition
        alu_result = rs + rt; // Simplified example
    end
endmodule
