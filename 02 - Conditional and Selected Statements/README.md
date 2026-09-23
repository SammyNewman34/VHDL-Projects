# Conditional and Selected Statements – VHDL

## Overview

This project focuses on two forms of **Concurrent Signal Assignment (CSA)** in VHDL:

* **Conditional Signal Assignment** using `when ... else`
* **Selected Signal Assignment** using `with ... select`

Three combinational digital components were implemented using both methods. The designs were developed and verified using **Xilinx Vivado**, including RTL design, synthesis, and simulation.

### Designs

* **8×3 Encoder**
* **4×1 Multibit MUX**
* **1×8 DEMUX**

Each component was implemented twice, once using conditional signal assignment and once using selected signal assignment.

---

## Tools & Technologies

* **VHDL**
* **Xilinx Vivado**
* Concurrent Signal Assignment (CSA)
* `when ... else`
* `with ... select`
* RTL Design
* Digital Logic Design
* Simulation and Synthesis

---

## 1. 8×3 Encoder

The 8×3 encoder converts eight input signals into a corresponding 3-bit output.

The encoder was implemented using both conditional and selected signal assignment.

### Conditional Implementation

Uses `when ... else` statements.

**RTL:** `VHDL/Encoder_8x3_Conditional.vhd`

**Testbench:** `Testbenches/TB_Encoder_8x3_Conditional.vhd`

![8×3 Encoder Conditional Schematic](Images/encoder_8x3_conditional_schematic.png)

![8×3 Encoder Conditional Synthesis](Images/encoder_8x3_conditional_synthesis.png)

![8×3 Encoder Conditional Simulation](Images/encoder_8x3_conditional_simulation.png)

### Selected Implementation

Uses `with ... select` statements.

**RTL:** `VHDL/Encoder_8x3_Selected.vhd`

**Testbench:** `Testbenches/TB_Encoder_8x3_Selected.vhd`

![8×3 Encoder Selected Schematic](Images/encoder_8x3_selected_schematic.png)

![8×3 Encoder Selected Synthesis](Images/encoder_8x3_selected_synthesis.png)

![8×3 Encoder Selected Simulation](Images/encoder_8x3_selected_simulation.png)

---

## 2. 4×1 Multibit MUX

The 4×1 multiplexer selects one of four **3-bit input vectors** based on the select signals and produces a 3-bit output vector.

The MUX was implemented using both conditional and selected signal assignment.

### Conditional Implementation

Uses `when ... else` statements.

**RTL:** `VHDL/Mux_4x1_Conditional.vhd`

**Testbench:** `Testbenches/TB_Mux_4x1_Conditional.vhd`

![4×1 MUX Conditional Schematic](Images/mux_4x1_conditional_schematic.png)

![4×1 MUX Conditional Synthesis](Images/mux_4x1_conditional_synthesis.png)

![4×1 MUX Conditional Simulation](Images/mux_4x1_conditional_simulation.png)

### Selected Implementation

Uses `with ... select` statements.

**RTL:** `VHDL/Mux_4x1_Selected.vhd`

**Testbench:** `Testbenches/TB_Mux_4x1_Selected.vhd`

![4×1 MUX Selected Schematic](Images/mux_4x1_selected_schematic.png)

![4×1 MUX Selected Synthesis](Images/mux_4x1_selected_synthesis.png)

![4×1 MUX Selected Simulation](Images/mux_4x1_selected_simulation.png)

---

## 3. 1×8 DEMUX

The 1×8 demultiplexer routes a single input signal to one of eight output lines based on the select signals.

The DEMUX was implemented using both conditional and selected signal assignment.

### Conditional Implementation

Uses `when ... else` statements.

**RTL:** `VHDL/Demux_1x8_Conditional.vhd`

**Testbench:** `Testbenches/TB_Demux_1x8_Conditional.vhd`

![1×8 DEMUX Conditional Schematic](Images/demux_1x8_conditional_schematic.png)

![1×8 DEMUX Conditional Synthesis](Images/demux_1x8_conditional_synthesis.png)

![1×8 DEMUX Conditional Simulation](Images/demux_1x8_conditional_simulation.png)

### Selected Implementation

Uses `with ... select` statements.

**RTL:** `VHDL/Demux_1x8_Selected.vhd`

**Testbench:** `Testbenches/TB_Demux_1x8_Selected.vhd`

![1×8 DEMUX Selected Schematic](Images/demux_1x8_selected_schematic.png)

![1×8 DEMUX Selected Synthesis](Images/demux_1x8_selected_synthesis.png)_)
