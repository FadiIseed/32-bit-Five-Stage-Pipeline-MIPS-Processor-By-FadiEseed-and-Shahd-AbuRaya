module Forwarding_Unit(
    input [4:0] rs_ID_EX, rt_ID_EX, rd_EX_MEM, rd_MEM_WB,
    input RegWrite_EX_MEM, RegWrite_MEM_WB,
    output reg [1:0] ForwardA, ForwardB
);
    always @(*) begin
        // Forward A
        if (RegWrite_EX_MEM && (rd_EX_MEM != 0) && (rd_EX_MEM == rs_ID_EX)) begin
            ForwardA = 2'b10; // EX/MEM Hazard
        end else if (RegWrite_MEM_WB && (rd_MEM_WB != 0) && (rd_MEM_WB == rs_ID_EX)) begin
            ForwardA = 2'b01; // MEM/WB Hazard
        end else begin
            ForwardA = 2'b00;
        end
        
        // Forward B
        if (RegWrite_EX_MEM && (rd_EX_MEM != 0) && (rd_EX_MEM == rt_ID_EX)) begin
            ForwardB = 2'b10; // EX/MEM Hazard
        end else if (RegWrite_MEM_WB && (rd_MEM_WB != 0) && (rd_MEM_WB == rt_ID_EX)) begin
            ForwardB = 2'b01; // MEM/WB Hazard
        end else begin
            ForwardB = 2'b00;
        end
    end
endmodule
