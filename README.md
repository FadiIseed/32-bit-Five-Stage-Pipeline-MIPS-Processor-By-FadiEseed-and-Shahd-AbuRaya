# 32-bit Five Stage Pipeline MIPS Processor
My name is Fadi Eseed and im in a group with Shahd AbuRaya to make this project step by step .

## Project Overview

This project involves the implementation of a 32-bit MIPS processor using a five-stage pipeline architecture in Verilog. The goal is to design and simulate a basic MIPS processor that includes instruction fetch, instruction decode, execution, memory access, and write-back stages. Additional features like forwarding and hazard detection units will be integrated to improve the pipeline's efficiency and handle data hazards.

## Features

- **Five-Stage Pipeline**: Implements the classic MIPS pipeline stages: IF, ID, EX, MEM, and WB.
- **Forwarding Unit**: Mitigates ALU hazards by forwarding data from later stages of the pipeline back to the EX stage as needed.
- **Hazard Detection Unit**: Detects and resolves hazards that can cause the pipeline to stall, ensuring correct program execution.

## Files must Included

- `MIPS_Processor.v` - The top-level module for the MIPS processor. 
- `IF_Stage.v` - Module for the Instruction Fetch stage.
- `ID_Stage.v` - Module for the Instruction Decode stage.
- `EX_Stage.v` - Module for the Execution stage.
- `MEM_Stage.v` - Module for the Memory Access stage.
- `WB_Stage.v` - Module for the Write-Back stage.
- `Forwarding_Unit.v` - Module for the forwarding logic.
- `Hazard_Detection_Unit.v` - Module for detecting and handling hazards.
- `Testbench.v` - Testbench for simulating and verifying the processor's functionality.

## Project Team Work 
- `MIPS_Processor.v` - Fadi Eseed
- `IF_Stage.v` - Shahd AbuRaya
- `ID_Stage.v` - Shahd AbuRaya
- `EX_Stage.v` - Shahd AbuRaya
- `MEM_Stage.v` - Fadi Eseed
- `WB_Stage.v` - Fadi Eseed
- `Forwarding_Unit.v` - Shahd AbuRaya
- `Hazard_Detection_Unit.v` - Fadi Eseed
- `Testbench.v` - Fadi Eseed

## Simulation and Testing

Instructions for running simulations:

1. Ensure you have an appropriate Verilog simulation tool like ModelSim or Icarus Verilog.
2. Compile all Verilog files using your tool's compilation command.
3. Run the testbench file to simulate the processor and observe the outputs.
