# 32-bit Five Stage Pipeline MIPS Processor
We are a group of two people , FadiEseed and ShahdAbuRaya.

## Introduction

A quick overview of the tasks that were divided between us  "Fadi Eseed" and "Shahd Abu Rayya", two members of The "32-bit Five Stage Pipeline MIPS Processor"project team, is provided in this report.
 Fadi ensures accuracy and efficiency in work execution with his breadth of experience in simulation . Shahd brings new solutions to our project issues with her imaginative approach and love for Testing and debugging  .
 
## Project Overview

In this project, a five-stage pipeline design in Verilog is used to construct a 32-bit MIPS processor. The objective is to create and simulate an instruction fetch, instruction decode, execution, memory access, and write-back stages of a basic MIPS processor. The pipeline will be made more efficient and capable of handling data dangers by integrating additional features like forwarding and hazard detection units.

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
- `Control_Unit` - 


## Team tasks division

- `Study and Research` - Both members
- `Design` - Both members
- `Implementation : IF_Stage.v ,ID_Stage.v ,EX_Stage.v and Forwarding_Unit.v` - Shahd AbuRaya
- `Implementation : MIPS_Processor.v, MEM_Stage.v, WB_Stage.v and Hazard_Detection_Unit.v` - Fadi Eseed
- `Simulation & Testbench Development` - Fadi Eseed
- `Integration` - Fadi Eseed
- `Testing and Debugging` - Shahd AbuRaya
- `Review and Revision` - both members
- `Report writing` - Shahd Abu Rayya
- `Control_Unit` - Both members
## Simulation and Testing

Instructions for running simulations:

1. Ensure you have an appropriate Verilog simulation tool like ModelSim or Icarus Verilog.
2. Compile all Verilog files using your tool's compilation command.
3. Run the testbench file to simulate the processor and observe the outputs.
