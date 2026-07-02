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
| 2026-05-17-wolfram-v1 | wolfram | family-spec.csv | clarinet-starter.wl | cad_authoring | reference_only | unreviewed | Source-only starter; not executed. |
| 2026-05-29-bob-r1-scad | openscad | family-spec.csv CLN-V5-STUDY-001 | cad/clarinet.scad | cad_authoring | pending_measurement | unreviewed | Starter parametric scaffold; all dimensions are measurement-required placeholders derived from acoustic-law seed values only; not fabrication authority until bore-station-plan.csv and tone-hole-authority-plan.csv are filled and reviewed. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) + OpenSCAD CLI | family-spec.csv CLN-V5-STUDY-001 | cad/clarinet.scad | cad_authoring | pending_measurement | self_checked | Existing master re-verified this pass; not rewritten or renamed (kept per V5 refresh scope). OpenSCAD render check: pass (openscad -o STL, exit 0). Still a measurement-required scaffold; no fabrication claim. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | visual-output-register.csv, clarinet-starter.wl | visual-output-register.csv, evolution/design-intent.md, evolution/master/manifest.json, evolution/revisions.md | packet_refresh | reference_only | self_checked | V5 refresh pass: added visual-output-register.csv row WL-001 for previously-unregistered clarinet-starter.wl (source-only, unexecuted); ran Evolution Stage 0 intake referencing cad/clarinet.scad as master. No fabrication-authority csv/xlsx found in this repo to log as new register/provenance rows — all tabular packet data (bom.csv, sourcing.csv, cut-list.csv, bore-station-plan.csv, tone-hole-authority-plan.csv, etc.) remains explicitly `pending_measurement`/`planned` per risks.md; no dimension changes made. |

## Current Boundary

This starter log exists to satisfy the V5 provenance surface. The OpenSCAD
starter scaffold added in bob/r1-v5-cad carries `pending_measurement` authority.
No CAD dimension may be claimed as fabrication authority until bore stations,
tone-hole positions, and mouthpiece geometry are measured and the authority gates
in cad-dxf-authority-gates.csv are resolved.
