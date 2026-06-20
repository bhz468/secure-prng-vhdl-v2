# Secure PRNG — VHDL Version 2 (RC-PRNG)

An advanced cryptographic PRNG based on a sponge construction with a ring oscillator entropy source and asynchronous FIFO output buffer.

## Architecture

```
TRNG (Ring Oscillator) → RC-PRNG Controller → Permutation Core → FIFO → Output
```

## Files

| File | Description |
|------|-------------|
| `pkg_rcprng_params.vhd` | Shared constants and types (state size, rate, FSM states) |
| `trng_ring_oscillator.vhd` | True RNG entropy source using ring oscillator |
| `permutation_core.vhd` | Sponge permutation with absorb and rotation logic |
| `rcprng_controller.vhd` | FSM: RESET → INIT → HEALTH → ABSORB → PERMUTE → SQUEEZE → OUTPUT |
| `fifo_async.vhd` | Asynchronous FIFO with Gray code pointer synchronization |
| `top_rcprng.vhd` | Top-level integration of all components |
| `tb_rcprng.vhd` | Testbench with dual-clock simulation (100 MHz core / 25 MHz read) |

## Parameters

- State: 320 bits | Rate: 64 bits | Capacity: 256 bits

## Simulation

```bash
vcom pkg_rcprng_params.vhd
vcom trng_ring_oscillator.vhd permutation_core.vhd fifo_async.vhd rcprng_controller.vhd
vcom top_rcprng.vhd tb_rcprng.vhd
vsim tb_rcprng
```
