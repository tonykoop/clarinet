# Clarinet Starter Packet

Status: L1 concept packet

This repository is an L1 starter packet for a simple cylindrical
single-reed clarinet study. It is not a build-ready shop packet. The current
files define the packet index, acoustic-law assumptions, measurement plan,
and authority boundaries needed before any CAD, DXF, or fabrication dimensions
are claimed.

## Packet Index

| File | Purpose | Readiness |
| --- | --- | --- |
| [design.md](design.md) | Clarinet study intent, observed/reference assumptions, and fabrication authority boundary | L1 starter |
| [family-spec.csv](family-spec.csv) | Explicit acoustic-law row for a cylindrical single-reed woodwind | L1 starter |
| [bom.csv](bom.csv) | V5 baseline bill-of-materials planning rows | L1 starter |
| [sourcing.csv](sourcing.csv) | Source and measurement dependency status for planned materials and tools | L1 starter |
| [bom-sourcing.csv](bom-sourcing.csv) | Minimal first-pass material and sourcing checklist | L1 starter |
| [cut-list.csv](cut-list.csv) | Explicit no-cut-yet fabrication gate for body, tone holes, mouthpiece, and keywork | L1 starter |
| [validation.csv](validation.csv) | V5 migration gate status and blockers | L1 starter |
| [validation-loop.csv](validation-loop.csv) | First measurement loop for bore, tone holes, reed setup, pitch, leaks, and response | L1 starter |
| [risks.md](risks.md) | Build, tuning, sourceability, and authority risks blocking L2/L3 promotion | L1 starter |
| [drawing-brief.md](drawing-brief.md) | Drawing and CAD/DXF brief for a future measured clarinet layout | L1 starter |
| [photo-shotlist.md](photo-shotlist.md) | Reference and shop-photo plan, including non-dimensional image boundaries | L1 starter |
| [cad-dxf-authority-plan.md](cad-dxf-authority-plan.md) | CAD/DXF authority plan before measured geometry exists | L1 starter |
| [cad/mcp-session-log.md](cad/mcp-session-log.md) | V5 MCP/creative-tool provenance starter; no external CAD/MCP output yet | L1 starter |
| [visual-output-register.csv](visual-output-register.csv) | Register of non-authoritative visual/reference artifacts currently in the repo | L1 starter |
| [wolfram-exploration.md](wolfram-exploration.md) | Wolfram study plan; no runtime validation has been performed | L1 starter |
| [wolfram-starter.wl](wolfram-starter.wl) | Source-only Wolfram starter for later measured quarter-wave checks | L1 starter |

## Current Fabrication Authority

No measured fabrication geometry exists yet. Do not cut, print, drill, or
machine from this repository until the validation loop records measured bore
and tone-hole data and the CAD/DXF authority plan is replaced by reviewed
dimensioned artifacts.

## V5 Promotion Gates

This packet can be reviewed as an L1 concept packet only. L2 promotion requires
completed baseline packet review, resolved sourceability choices, and measured
or reviewed inputs for the first CAD/DXF scaffold. L3 or L4 promotion is
blocked until critical geometry, pitch behavior, leak checks, and tool outputs
trace to measured templates, CAD/DXF, design tables, or reviewed drawings.
