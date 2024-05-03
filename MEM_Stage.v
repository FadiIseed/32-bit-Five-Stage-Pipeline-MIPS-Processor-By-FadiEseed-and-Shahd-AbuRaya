module MEM_Stage(
    input [31:0] alu_result,
    output reg [31:0] mem_data
);
    always @(*) begin
        // Placeholder for memory read/write
        mem_data = alu_result; // Assuming no actual memory operation
    end
endmodule
