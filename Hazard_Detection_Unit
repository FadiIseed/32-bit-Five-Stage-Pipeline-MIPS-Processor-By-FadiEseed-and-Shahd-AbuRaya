module Hazard_Detection_Unit(
    input [4:0] rs_IF_ID, rt_IF_ID, rd_ID_EX,
    input MemRead_ID_EX,
    output reg stall
);
    always @(*) begin
        // Stall the pipeline if there's a load-use hazard
        if (MemRead_ID_EX && ((rd_ID_EX == rs_IF_ID) || (rd_ID_EX == rt_IF_ID))) begin
            stall = 1;
        end else begin
            stall = 0;
        end
    end
endmodule
