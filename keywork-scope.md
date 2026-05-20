# Clarinet Keyed-Mechanism Scope

## Readiness

L1 scope statement. This document declares which keyed-mechanism details
are out of scope for the first clarinet prototype. It carries no
fabrication, CAD, DXF, or geometric authority. It exists so future
rounds do not have to re-justify the keyless stance and so any pitch,
response, or playability evidence gathered at L1/L2 is reported with
the right caveats.

## First-Prototype Stance

The first clarinet prototype is intentionally **keyless**. The body is
a simple cylindrical single-reed resonator. All tone holes are opened
and closed directly by the player's fingers (or, during measurement,
by test plugs, tape, or temporary closures listed in
`leak-pitch-validation-plan.csv`).

No keys, key cups, pad seats, posts, axles, springs, rod hinges, ring
keys, lever keys, or linkages are designed, sourced, fabricated, or
fitted at this readiness level.

## Out-Of-Scope Register

The following keyed-mechanism elements are **out of scope** for the
first prototype and must not appear in any L1/L2 BOM, sourcing, CAD,
DXF, or fabrication plan:

- Register key / speaker vent (12th-harmonic / register-break aid).
- Throat A and A♭ keys.
- LH and RH lever keys (Eb/Ab, C/F, etc.).
- Ring-key alternates over open tone holes.
- Trill keys and side keys.
- Left-thumb and right-thumb mechanisms.
- Bridge / linkage hardware between upper and lower body joints.
- Pad cups, pad seats, springs, posts, axles, rods, and screws
  associated with any of the above.

## Acoustic Consequences

Without a register vent, the first prototype cannot reliably overblow
to the clarion register, and the playable range is limited to the
chalumeau register and immediately adjacent altissimo squeak risk.
Pitch and response evidence collected at L1/L2 must declare this
limitation when reporting results, and must not be compared against
keyed-clarinet pitch tables across the register break.

The 12th-harmonic register-break behavior characteristic of cylindrical
single-reed bores is acknowledged as a known limitation accepted at L1
in exchange for fabrication simplicity.

## What Becomes In-Scope Later (Gated)

These elements may move into scope only after the listed gates close:

- **Register vent**: only after measured bore stations and a first
  pitch table close on the chalumeau register
  (`bore-station-plan.csv` + `validation-loop.csv` evidence rows
  complete and reviewed).
- **Pad / cup / lever hardware**: only after a `build/hardware/`
  folder is added to this repository (per the
  `instrument-repo-folder-template` convention used across other
  instrument-maker repos) and a measured tone-hole map exists with
  reviewed CAD or DXF authority.
- **Throat / lever / side keys**: only after the register-vent and
  pad-cup gates above have both closed.

Each gate requires reviewed, measured evidence — not generated images,
prose descriptions, or unmeasured calculations.

## Cross-References

- `design.md` — Build Authority Boundary section.
- `risks.md` — Fabrication Risks and Acoustic Risks.
- `cut-list.csv` — explicit no-cut gate for body, tone holes,
  mouthpiece, and keywork.
- `tone-hole-authority-plan.csv` — planned tone-hole evidence rows.
- `cad-dxf-authority-gates.csv` — authority gates blocking fabrication.
