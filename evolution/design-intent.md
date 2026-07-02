# Design Intent — clarinet rev A

- Master CAD: `cad/clarinet.scad` (sha256: 0cb24488d520989f66ac5acca6ee1528d263dc0cebe1c966bad8f89e859ca8c7), driven by `family-spec.csv` CLN-V5-STUDY-001 (sha256: 80482ab0c15b6b409fba6900ecbaef5bfedcc60975c3a9b77c98eaaccdf52ce3)
- Function: Simple cylindrical single-reed clarinet study. Planning model is closed-open
  quarter-wave behavior — the reed/mouthpiece is the closed/control end and the effective
  open end is governed by the bell or the first open tone hole (design.md Study Scope).
  Target note/pitch is not yet set (`family-spec.csv` records `target_note=TBD`,
  `target_hz=TBD`).
- Environment: indoor instrument; wood/tube body stock, reed response is humidity- and
  setup-sensitive (risks.md Acoustic Risks).
- Target qty: 1 (prototype). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

All dimensions below are starter/acoustic-law seed values only — every row is
`pending_measurement` / `measurement_required`. None may be treated as fabrication authority.

| Feature | Nominal (seed) | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Bore ID | 14.9 mm | TBD — bore-station-plan.csv gauge check pending | resonator geometry, pitch | cad/clarinet.scad `bore_id_mm` (starter estimate, measurement_required) |
| Wall thickness | 4.0 mm | TBD | body stock selection, tone-hole chimney depth | cad/clarinet.scad `wall_thickness_mm` (starter estimate) |
| Body (effective) length | 590.0 mm | TBD — bore-station-plan.csv BORE-000..050 pending | closed-open quarter-wave acoustic length | cad/clarinet.scad `body_length_mm` (acoustic seed for closed-open A3 first-approx) |
| Bell length / flare | 80.0 mm / 30.0 mm | TBD | effective open-end/end-correction behavior | cad/clarinet.scad `bell_length_mm` / `bell_flare_mm` (starter placeholders) |
| Mouthpiece socket depth/ID | 30.0 mm / bore_id+1.5 mm | TBD | reed/mouthpiece fit, closed-end condition | cad/clarinet.scad `mouthpiece_socket_*` (measurement required) |
| Tone hole diameter | 10.5 mm (all 7 holes, same seed) | TBD — tone-hole-authority-plan.csv TH-* pending | pitch/register correction | cad/clarinet.scad `tone_hole_dia_mm` (starter — measurement required) |
| Tone hole centers (7, from bell end) | 85 / 130 / 175 / 225 / 270 / 315 / 380 mm | TBD — no image-derived position is allowed per tone-hole-authority-plan.csv | fingering layout, pitch/response | cad/clarinet.scad `tone_hole_z` (approximate Boehm-layout seed, not measured authority) |

## Incidental (free for DFM)

- External body profile/finish, non-mating cosmetic detail, socket wall styling not
  affecting fit.

## Must-nots (DFM may never violate)

- No CAD, DXF, design table, or measured template currently controls any cut — do not cut,
  print, drill, or machine from this repository (README Current Fabrication Authority; risks.md).
- No image-derived tone-hole position is allowed; tone-hole centers/diameters/chimney/undercut
  require reviewed evidence from `tone-hole-authority-plan.csv` before any CAD authority claim
  (tone-hole-authority-plan.csv notes, all TH-* rows).
- Bore ID, length, and tone-hole geometry stay measurement-required until
  `bore-station-plan.csv` and `tone-hole-authority-plan.csv` are filled and reviewed
  (risks.md Fabrication Risks; cad/clarinet.scad header).
- Temporary test closures/leaks must not be treated as validated leak performance
  (risks.md Acoustic Risks).

## Material intent

- Planned (per bom.csv, all `pending_measurement`/TBD quantity): cylindrical clarinet body
  blank or tube (BOM-001), single-reed mouthpiece (BOM-002), reeds in known strengths
  (BOM-003), temporary sealing (cork/pads/tape, BOM-004).
- Acceptable subs: none recorded yet (sourceability choices unresolved — see risks.md
  Promotion Blockers, L2).
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no
concessions logged, nothing presented as shippable or fabrication-ready.
