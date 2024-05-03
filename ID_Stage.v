module ID_Stage(
    input [31:0] instruction,
    output reg [5:0] opcode,
    output reg [4:0] rs, rt, rd,
    output reg [15:0] immediate
);
    always @(*) begin
        opcode = instruction[31:26];
        rs = instruction[25:21];
        rt = instruction[20:16];
        rd = instruction[15:11];
        immediate = instruction[15:0];
    end
endmodule
