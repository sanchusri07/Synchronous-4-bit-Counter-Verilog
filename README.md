# Synchronous 4-bit Binary Counter

## Overview
This project implements a synchronous 4-bit binary up-counter using Verilog HDL. The counter increments on each rising edge of the clock and rolls over to `0000` after reaching `1111`.

## Features
- 4-bit binary up-counting from 0 to 15
- Synchronous active-high reset
- Clock-driven sequential logic
- Verilog testbench for functional simulation
- VCD waveform generation for signal analysis

## Design Details
- **Clock (`clk`):** Controls when the counter updates.
- **Reset (`reset`):** When high at a rising clock edge, resets the counter to zero.
- **Count (`count`):** A 4-bit output representing the current count.

## Tools Used
- Verilog HDL
- EDA Playground
- Icarus Verilog
- EPWave

## Files
- `design.sv` — Counter RTL design
- `testbench.sv` — Simulation testbench

## Simulation Results
The simulation demonstrates the counter incrementing from `0000` to `1111`, then wrapping around to `0000`. The generated VCD file can be inspected in EPWave to observe the clock, reset, and counter signals.

## How to Run
1. Open [EDA Playground](https://www.edaplayground.com/).
2. Paste `design.sv` into the Design editor.
3. Paste `testbench.sv` into the Testbench editor.
4. Select Icarus Verilog and enable EPWave.
5. Run the simulation and inspect the console output and waveforms.

## Future Improvements
- Add a self-checking testbench with automatic assertions.
- Test reset behavior at different clock cycles.
- Explore parameterized counter widths and enable control.
