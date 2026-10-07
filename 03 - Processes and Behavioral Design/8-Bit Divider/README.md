# 8-Bit Binary Divider – Process and For Loop

## Overview

This project implements an 8-bit unsigned binary divider in VHDL using a `Process` statement and a `for loop`.

The divider receives two 8-bit unsigned inputs:

- `A` – divisor
- `B` – dividend

and produces two 8-bit outputs:

- `C` – quotient
- `R` – remainder

The design uses an iterative binary division algorithm based on left shifting, comparison, and subtraction.

The project also includes a testbench using a `for loop` and `wait` statements to verify several division cases.

---

## System Structure

The VHDL entity is defined with two 8-bit inputs and two 8-bit outputs:

```vhdl
entity Q1_Divider is
    port(
        a, b : in std_logic_vector(7 downto 0);
        c, r : out std_logic_vector(7 downto 0)
    );
end Q1_Divider;