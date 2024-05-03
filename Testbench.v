module Testbench;
    reg clk, reset;
    wire [31:0] instruction, next_pc, write_back_data;

    // Instantiate modules
    IF_Stage if_stage(clk, reset, instruction, next_pc);
    ID_Stage id_stage(instruction, opcode, rs, rt, rd, immediate);
    EX_Stage ex_stage(opcode, rs, rt, rd, immediate, alu_result);
    MEM_Stage mem_stage(alu_result, mem_data);
    WB_Stage wb_stage(mem_data, write_back_data);

    initial begin
        // Set up the VCD dump
        $dumpfile("dump.vcd");
        $dumpvars(0, Testbench);

        clk = 0;
        reset = 1; #20;
        reset = 0;
        // Test for 100 cycles
        repeat (100) #10 clk = ~clk;
    end
endmodule
