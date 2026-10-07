# Asynchronous Serial-to-Parallel Data Transfer

## Overview

This project implements an asynchronous serial-to-parallel data transfer system in VHDL.

A single-bit `DataIn` signal is received serially and shifted into an internal 8-bit vector. Each active `start` signal causes a new input bit to be accepted and the existing data to shift right.

After eight bits have been received, a `SHIFT_DONE` flag is activated for 10 ns and the completed 8-bit value is transferred to the parallel `DataOut` output.

The system is implemented behaviorally using two VHDL processes and does not use a clock signal.

---

## System Structure

The system contains the following signals:

| Signal | Type | Function |
|---|---|---|
| `DataIn` | Input, 1 bit | Serial data input |
| `start` | Input, 1 bit | Initiates a data shift |
| `hold` | Input, 1 bit | Temporarily freezes data entry |
| `DataOut` | Output, 8 bits | Parallel data output |
| `SHIFT_DONE` | Internal | Indicates that 8 bits have been received |
| `Vec_shift` | Internal, 8 bits | Stores and shifts the received data |

### Data Transfer

Whenever `start` is activated and `hold` is not active, the incoming bit is inserted into the MSB of `Vec_shift`.

Conceptually:

```text
Before:
Vec_shift = [b7 b6 b5 b4 b3 b2 b1 b0]

After receiving DataIn:
Vec_shift = [DataIn b7 b6 b5 b4 b3 b2 b1]