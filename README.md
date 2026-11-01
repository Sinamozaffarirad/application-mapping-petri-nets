# Application Mapping for Bus and Network-on-Chip Architectures

An academic hardware/software co-design project that models application mapping on two system-on-chip communication architectures: a shared bus and a 4×4 mesh Network-on-Chip (NoC).

The project uses timed Petri nets to make computation, communication, and resource contention explicit. It is intended as a compact, executable study of how mapping decisions affect end-to-end latency.

## Project scope

The application is represented by a synchronous dataflow-inspired graph with 16 computational transitions and 18 places. Each transition is assigned to one of 16 processing elements (PEs), then evaluated under two communication architectures.

The models progress through three levels of fidelity:

| Model | What it represents |
| --- | --- |
| `PN_Initial` | Baseline timed Petri net containing computation delays only. |
| `*_DelayCommunication` | Adds communication-delay transitions between dependent computations. |
| `*_FINAL` | Adds mutual exclusion for shared PEs and communication resources. |

### Bus model

- A shared-bus architecture with 16 logical PEs.
- Inter-PE communication has a fixed delay of two time units; intra-PE communication has zero additional delay.
- The final model uses PE mutex places and a `Bus_Mutex` place to prevent concurrent use of shared resources.

### NoC model

- A 4×4 mesh with XY-style routing.
- Inter-PE delay is derived from Manhattan distance between source and destination PEs.
- The final model reserves both PEs and the links on a communication path through mutex places, exposing the impact of placement and contention.

## Results from the submitted scenario

The source models implement the scenario documented for the project: a single input token and the configured transition-to-PE mapping.

| Scenario | Completion time (time units) |
| --- | ---: |
| Computation-only baseline | 31 |
| Bus with communication delays | 35 |
| NoC with communication delays | 33 |
| Bus with PE and bus contention | 35 |
| NoC with PE and link contention | 37 |

These results demonstrate that NoC performance depends on mapping quality: nearby communicating tasks can reduce delay, while a placement with longer routes and link contention can be slower than a shared bus. The model is therefore useful for exploring mapping alternatives, not for claiming a universal winner.

## Repository layout

```text
Bus/
  PN_Initial.m
  PN_BUS_DelayCommunication.m
  PN_BUS_FINAL.m
NOC/
  PN_Initial.m
  PN_NOC_DelayCommunication.m
  PN_NOC_FINAL.m
```

## Requirements

- MATLAB
- The course Petri-net toolbox providing `Init_PN`, `New_Place`, `New_Transition`, `Weighted_Arc_P2T`, and `Weighted_Arc_T2P` (referred to in the project report as `KU_PN_TOOL`)

The toolbox is not included because it is a course dependency rather than project-authored source code.

## Running a model

1. Add the toolbox and either `Bus` or `NOC` directory to the MATLAB path.
2. Run a model function, for example:

   ```matlab
   model = PN_BUS_FINAL();
   ```

3. Execute or visualize the returned Petri-net model using the toolbox workflow.

The selected folder matters because both architectures include a baseline function named `PN_Initial`.

## Mapping experiments

The mapping is deliberately parameterized in each architecture model. To explore another placement, edit the transition-to-PE assignments near the top of the relevant `.m` file and rerun the model. The communication paths, delays, and resource constraints are then generated from that mapping.

## Academic context

Final project for the Hardware/Software Co-Design course. The repository contains the final MATLAB implementation only; generated submission archives, intermediate drafts, and report files are intentionally excluded.
