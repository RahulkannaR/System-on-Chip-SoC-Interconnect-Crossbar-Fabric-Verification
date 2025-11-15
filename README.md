# AXI4 Crossbar Interconnect Fabric — UVM Verification Environment

This repository contains the complete **UVM-based Verification Environment** for an **AXI4 System-on-Chip (SoC) Crossbar Interconnect Fabric**. The project validates arbitration, routing, burst sequencing, multi-master concurrency, and protocol compliance using CRV-driven stimulus and assertion-based verification.

> Verification Type: AXI4 Protocol + Crossbar Fabric  
> Methodology: UVM + Constrained-Random + SVA  
> Tools: QuestaSim 2024.3  
> Duration: May 2025 – Aug 2025  

---

## Project Highlights

- Full AXI4-compliant **Crossbar Fabric Verification**
- Multi-master → Multi-slave routing validation
- Arbitration logic validation (RR, Priority, QoS)
- ID forwarding & transaction ordering checks
- Burst sequencing & boundary rule validation
- SVA-based VALID–READY handshake stability checks
- Randomized stress traffic generation for robustness
- 90%+ functional coverage achievement

---

## Repository Structure

AXI4-Crossbar-UVM/  
├── rtl/  
│   ├── axi_crossbar.sv  
│   ├── axi_arbiter.sv  
│   ├── axi_decoder.sv  
│   ├── axi_interface.sv  
│   └── defines.vh  
│  
├── tb/  
│   ├── top_tb.sv  
│   ├── axi_if.sv  
│   ├── axi_env.sv  
│   ├── axi_agent.sv  
│   ├── axi_driver.sv  
│   ├── axi_monitor.sv  
│   ├── axi_sequence.sv  
│   ├── axi_sequencer.sv  
│   ├── axi_transaction.sv  
│   ├── axi_scoreboard.sv  
│   ├── axi_coverage.sv  
│   ├── axi_assertions.sv  
│   └── axi_test.sv  
│  
├── scripts/  
│   ├── compile.do  
│   ├── run.do  
│   └── regress.sh  
│  
├── results/  
│   ├── logs/  
│   ├── waves/  
│   └── coverage/  
│  
└── README.md  

---

## Getting Started

### Prerequisites
- QuestaSim / ModelSim 2024.3  
- UVM 1.2 / UVM 2020  
- AXI4 protocol documentation  

### Compile & Run
compile.do:  
vlog rtl/*.sv tb/*.sv  

run.do:  
vsim top_tb -do "run -all"  

Or use regression script:  
sh scripts/regress.sh  

---

## Verification Scope

- Address decode correctness  
- Crossbar routing table verification  
- Arbitration algorithm behavior  
- Multi-master ordering rules  
- AXI4 read/write channel independence  
- Burst protocol: FIXED / INCR / WRAP  
- ID propagation & out-of-order transaction tracking  
- Back-to-back transfer corner cases  
- Protocol error response checks  

---

## Testbench Components

- **AXI Agent:** driver + monitor + sequencer  
- **Scoreboard:** end-to-end path correctness  
- **Coverage:** functional bins for burst types, sizes, QoS, masters  
- **Assertions:** VALID–READY stability, boundary violations, ID rules  
- **Sequences:** CRV-based load tests, arbitration stress, parallel masters  

---

## Coverage Achievement

- 90% functional coverage (burst types, ID patterns, routing paths)  
- 100% assertion pass rate (protocol checks)  
- 10+ AXI scenarios including:  
  - Multi-master contention  
  - Boundary crossing  
  - Back-pressure tests  
  - QoS-priority arbitration  
  - Mixed read/write concurrency  

---

## Results Directory

results/  
├── logs/          → Simulation and regression logs  
├── waves/         → Waveform dumps (VCD/WLF)  
└── coverage/      → UCDB coverage reports + HTML summary  

---

## Author

R. Rahul  
Design Verification Engineer — AXI4, UVM, SoC Interconnects  
Email: rahulkanna170504@gmail.com  

---

##  Keywords
 
AXI4, Crossbar, UVM, Arbitration, SoC Interconnect, Constrained-Random Verification,  
SVA, Functional Coverage, Multi-Master Traffic, Burst Sequencing, Routing Verification
