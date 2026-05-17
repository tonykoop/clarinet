# Clarinet Drawing Brief

Status: L1 concept packet. This brief defines the future drawing package but
does not provide cut-ready geometry.

## Required Datum System

- Mouthpiece/reed datum: record mouthpiece model, facing, reed strength, and
  insertion depth or interface reference.
- Body datum: define station zero, body length direction, bore measurement
  stations, joint locations, and bell/open-end reference.
- Tone-hole datum: record center distance from station zero, diameter, chimney
  height, undercut notes, and closure state.

## Future Drawings

| drawing_id | path | role | controlling_input | current_status |
| --- | --- | --- | --- | --- |
| DRW-001 | drawings/clarinet-body-layout.dxf | body and tone-hole fabrication layout | measured template or reviewed design table | not_started |
| DRW-002 | drawings/clarinet-body-layout.svg | human review preview | drawings/clarinet-body-layout.dxf | not_started |
| DRW-003 | drawings/clarinet-measurement-template.pdf | bench measurement worksheet | validation-loop.csv | not_started |

## Authority Rules

The future DXF may become fabrication authority only after it is generated from
measured or reviewed dimensions and recorded in `visual-output-register.csv`.
Any SVG, PDF, PNG, screenshot, render, or generated image remains
`derived_preview`, `reference_only`, or `concept_only` unless it explicitly
cites a controlling authority row.
