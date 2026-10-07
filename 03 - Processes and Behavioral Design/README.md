# Processes and Behavioral Design – VHDL

## Overview

This project focuses on behavioral VHDL design using `Process` statements, loops, internal signals, and asynchronous control mechanisms.

The exercises demonstrate how more complex digital systems can be described behaviorally rather than through individual logic gates. The projects include an iterative binary divider, a 1-bit Arithmetic-Logic Unit (ALU), and an asynchronous serial-to-parallel data transfer system.

---

## Projects

### Q1 – 8-Bit Binary Divider

An 8-bit unsigned binary divider implemented using a VHDL `Process` and `for` loop.

The divider receives an 8-bit divisor and dividend and produces an 8-bit quotient and remainder. The algorithm uses iterative shifting, comparison, and subtraction.

**Key concepts:**
- Behavioral VHDL
- `Process` statements
- `for` loops
- Unsigned arithmetic
- Binary division
- Simulation and synthesis

[View Q1 – 8-Bit Divider](Q1%20-%208-Bit%20Divider/)

---

### Q2 – 1-Bit Arithmetic-Logic Unit

A behavioral implementation of a 1-bit ALU supporting both logical and arithmetic operations.

The ALU uses enable and inversion controls together with function-selection inputs to perform operations including AND, OR, inversion, addition, subtraction, and constant operations. The arithmetic portion uses Full Adder logic.

The design is implemented using multiple VHDL processes and verified using a dedicated testbench with a `for` loop.

**Key concepts:**
- Behavioral RTL design
- Multiple `Process` statements
- Function selection
- Enable and inversion control
- Full Adder logic
- Arithmetic and logic operations
- Testbench verification

[View Q2 – 1-Bit ALU](Q2%20-%201-Bit%20ALU/)

---

### Q3 – Asynchronous Serial-to-Parallel Data Transfer

An asynchronous serial-to-parallel data transfer system implemented using two VHDL processes.

A serial 1-bit input is shifted into an internal 8-bit vector whenever a `start` signal is received. After eight bits have been collected, a `SHIFT_DONE` flag indicates completion and the received data is presented as an 8-bit parallel output.

The system also includes a `hold` control that temporarily freezes data entry.

**Key concepts:**
- Behavioral VHDL
- Multiple processes
- `wait until` statements
- Asynchronous operation
- Shift registers
- Serial-to-parallel conversion
- Counter-based control
- Simulation

[View Q3 – Asynchronous Serial-to-Parallel](Q3%20-%20Asynchronous%20Serial-to-Parallel/)

---

## Design Approach

Across these exercises, the designs progress from iterative arithmetic processing to more complex behavioral control.

The implementations emphasize:

1. Defining system inputs, outputs, and internal signals
2. Describing functionality using behavioral VHDL
3. Using processes to control system behavior
4. Applying loops and conditional logic where appropriate
5. Creating dedicated testbenches
6. Verifying functionality through simulation
7. Reviewing synthesized hardware where synthesis was required

---

## Tools and Technologies

- VHDL
- Xilinx Vivado
- Behavioral RTL Design
- VHDL Processes
- `for` Loops
- `wait until` Statements
- Digital Logic Design
- Arithmetic Circuits
- Simulation
- Synthesis