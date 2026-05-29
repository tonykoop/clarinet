# MCP Session Log

Status: L1 concept packet. No MCP-connected CAD, image-generation, Adobe,
Blender, Fusion, SketchUp, SolidWorks, or design-table session has produced
or modified fabrication artifacts yet. The Wolfram row records only the
source-only starter file; no runtime execution is claimed.

When an external tool session produces or edits an artifact, add one row per
tool session using the V5 provenance columns below. Generated visuals must
also be recorded in `visual-output-register.csv`.

| session_id | tool | input_authority | outputs | role | authority_result | review_status | notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 2026-05-17-wolfram-v1 | wolfram | family-spec.csv | wolfram-starter.wl | cad_authoring | reference_only | unreviewed | Source-only starter; not executed. |
| 2026-05-29-bob-r1-scad | openscad | family-spec.csv CLN-V5-STUDY-001 | cad/clarinet.scad | cad_authoring | pending_measurement | unreviewed | Starter parametric scaffold; all dimensions are measurement-required placeholders derived from acoustic-law seed values only; not fabrication authority until bore-station-plan.csv and tone-hole-authority-plan.csv are filled and reviewed. |

## Current Boundary

This starter log exists to satisfy the V5 provenance surface. The OpenSCAD
starter scaffold added in bob/r1-v5-cad carries `pending_measurement` authority.
No CAD dimension may be claimed as fabrication authority until bore stations,
tone-hole positions, and mouthpiece geometry are measured and the authority gates
in cad-dxf-authority-gates.csv are resolved.
