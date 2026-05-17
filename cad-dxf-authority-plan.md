# CAD/DXF Authority Plan

## Current State

No CAD, DXF, design table, or measured template in this repository currently
controls fabrication. The packet is starter-only.

## Authority Path

1. Complete the measurement rows in `validation-loop.csv`.
2. Complete the B0 authority intake tables:
   `bore-station-plan.csv`, `tone-hole-authority-plan.csv`,
   `reed-mouthpiece-assumptions.csv`, `leak-pitch-validation-plan.csv`, and
   `cad-dxf-authority-gates.csv`.
3. Add a measured template or design table that names the datum system:
   mouthpiece/reed datum, body station datum, bore ID stations, tone-hole
   centers, tone-hole diameters, and closure state.
4. Generate CAD/DXF from the measured template or reviewed design table.
5. Update `visual-output-register.csv` so the governing CAD, DXF, design
   table, or measurement template has `authority=fabrication`.
6. Treat any SVG, PDF, render, screenshot, or generated image as derived or
   reference-only unless it names the governing authority artifact.

## B0 Gate Summary

| gate | required_table | status | blocks |
| --- | --- | --- | --- |
| Shared datum review | `measured-bore-tonehole-authority-plan.md` | planned | all CAD/DXF authority |
| Bore station review | `bore-station-plan.csv` | blocked | body bore geometry and stock authority |
| Tone-hole review | `tone-hole-authority-plan.csv` | blocked | drilling coordinates and tone-hole DXF |
| Setup/validation review | `reed-mouthpiece-assumptions.csv`, `leak-pitch-validation-plan.csv` | blocked | pitch-based CAD iteration |
| Fabrication register update | `cad-dxf-authority-gates.csv`, `visual-output-register.csv` | blocked | any shop-facing CAD/DXF claim |

## Not Yet Allowed

- Cut-ready body layouts.
- Tone-hole drilling coordinates.
- Mouthpiece or reed-window geometry.
- Keywork geometry.
- Claims that a generated or reference image proves dimensions.
