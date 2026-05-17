# CAD/DXF Authority Plan

## Current State

No CAD, DXF, design table, or measured template in this repository currently
controls fabrication. The packet is starter-only.

## Authority Path

1. Complete the measurement rows in `validation-loop.csv`.
2. Add a measured template or design table that names the datum system:
   mouthpiece/reed datum, body station datum, bore ID stations, tone-hole
   centers, tone-hole diameters, and closure state.
3. Generate CAD/DXF from the measured template or reviewed design table.
4. Update `visual-output-register.csv` so the governing CAD, DXF, design
   table, or measurement template has `authority=fabrication`.
5. Treat any SVG, PDF, render, screenshot, or generated image as derived or
   reference-only unless it names the governing authority artifact.

## Not Yet Allowed

- Cut-ready body layouts.
- Tone-hole drilling coordinates.
- Mouthpiece or reed-window geometry.
- Keywork geometry.
- Claims that a generated or reference image proves dimensions.
