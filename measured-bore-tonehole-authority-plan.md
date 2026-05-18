# Clarinet Measured Bore And Tone-Hole Authority Plan

Status: L1 authority plan. This file defines the evidence needed before the
clarinet packet can claim measured bore geometry, tone-hole layout authority,
or CAD/DXF fabrication control. It does not provide cut-ready dimensions.

## Scope

The next useful step is a measured bench packet that can support a later L2
shop-packet candidate. The plan below separates five evidence families:

- Bore station capture.
- Tone-hole position and geometry capture.
- Reed and mouthpiece setup assumptions.
- Leak, pitch, and response validation.
- CAD/DXF authority gates.

Generated images, screenshots, unreviewed sketches, and prose descriptions are
not fabrication authority. Fabrication authority must come from measured
templates, reviewed design tables, CAD, or DXF artifacts that cite these
evidence tables.

## Required Datum Chain

| datum_id | datum | required_record | authority_status | notes |
| --- | --- | --- | --- | --- |
| DAT-001 | mouthpiece/reed setup datum | mouthpiece model, facing, reed brand/cut/strength, insertion or tenon reference | planned | Every pitch/leak row must cite the same setup record or mark a setup change. |
| DAT-002 | body station zero | physical zero point on body blank, barrel/body joint, or measured template | planned | Tone-hole centers and bore stations must share this origin. |
| DAT-003 | bore station axis | measurement direction, station spacing, bore gauge/caliper method | planned | Bore ID rows must include tool and repeatability notes. |
| DAT-004 | tone-hole centerline | center distance from DAT-002, angular orientation, closure state | planned | No image-derived hole map is allowed. |
| DAT-005 | bell/open-end reference | bell rim, foot opening, or first open tone-hole condition | planned | Needed for effective acoustic-length interpretation. |

## Bore Station Table

The governing machine-readable table is `bore-station-plan.csv`.

| station_id | feature | station_from_datum_mm | required_measurement | evidence_status | authority_gate |
| --- | --- | --- | --- | --- | --- |
| BORE-000 | mouthpiece exit or tenon interface | TBD | ID, fit reference, insertion depth or shoulder datum | planned | Required before mouthpiece interface CAD. |
| BORE-010 | upper body intake | TBD | ID, ovality, material condition | planned | Required before stock selection is final. |
| BORE-020 | first upper body station | TBD | ID and repeatability pass | planned | Required before any tone-hole correction model. |
| BORE-030 | middle body station | TBD | ID and local taper check | planned | Required before body layout DXF. |
| BORE-040 | lower body station | TBD | ID and local taper check | planned | Required before body layout DXF. |
| BORE-050 | bell or outlet reference | TBD | ID/open-end geometry and reference condition | planned | Required before effective-length checks. |

## Tone-Hole Position Table

The governing machine-readable table is `tone-hole-authority-plan.csv`.

| hole_id | planned_role | center_from_datum_mm | diameter_mm | chimney_height_mm | closure_state | evidence_status |
| --- | --- | --- | --- | --- | --- | --- |
| TH-REG | register vent candidate | TBD | TBD | TBD | normally closed or test plug | planned |
| TH-LH1 | left-hand first-finger candidate | TBD | TBD | TBD | open/closed test state required | planned |
| TH-LH2 | left-hand second-finger candidate | TBD | TBD | TBD | open/closed test state required | planned |
| TH-LH3 | left-hand third-finger candidate | TBD | TBD | TBD | open/closed test state required | planned |
| TH-RH1 | right-hand first-finger candidate | TBD | TBD | TBD | open/closed test state required | planned |
| TH-RH2 | right-hand second-finger candidate | TBD | TBD | TBD | open/closed test state required | planned |
| TH-RH3 | right-hand third-finger candidate | TBD | TBD | TBD | open/closed test state required | planned |
| TH-BELL | bell/open-end reference | TBD | TBD | TBD | open reference | planned |

No row is approved for drilling. Each row needs measured center position,
diameter, chimney height, undercut note, angular orientation, and leak-tested
closure evidence before CAD/DXF fabrication authority can cite it.

## Reed And Mouthpiece Assumption Table

The governing machine-readable table is `reed-mouthpiece-assumptions.csv`.

| setup_id | mouthpiece | reed | setup_variable | status | validation_dependency |
| --- | --- | --- | --- | --- | --- |
| SETUP-001 | TBD model/facing | TBD brand/cut/strength | baseline setup for first pitch and response pass | planned | Required before pitch table evidence can be compared. |
| SETUP-002 | same as SETUP-001 unless changed | alternate strength TBD | response sensitivity pass | planned | Required before tuning changes are attributed to geometry. |
| SETUP-003 | alternate mouthpiece only if sourced | matched reed TBD | mouthpiece sensitivity pass | optional_planned | Required if first setup fails onset or stable pitch checks. |

Reed and mouthpiece data are not side notes; they control the closed-end
boundary condition for this closed-open planning model.

## Leak, Pitch, And Response Validation Table

The governing machine-readable table is `leak-pitch-validation-plan.csv`.

| validation_id | phase | test | required_before | pass_condition | evidence_status |
| --- | --- | --- | --- | --- | --- |
| LPV-001 | setup | record DAT-001 setup | any pitch pass | setup fields complete and tied to reed/mouthpiece row | planned |
| LPV-002 | integrity | joint and closure leak check | pitch table | no observed joint or temporary-closure leak under selected method | planned |
| LPV-003 | pitch | stable fingering pitch table | CAD iteration | target note, observed frequency, cents error, room conditions, and setup id recorded | planned |
| LPV-004 | response | onset and squeak-risk notes | CAD iteration | stable/unstable/failed response state recorded per fingering | planned |
| LPV-005 | correction | geometry-change log | second CAD/DXF pass | each change cites bore, tone-hole, pitch, and leak evidence rows | planned |

Pitch evidence without a current leak check and setup record is invalid for
promotion. Leak evidence must be collected on the same physical setup used for
the pitch and response rows.

For this lane, that same-session linkage is implemented in the dedicated
reed/mouthpiece/leak capture packet:
`reed-mouthpiece-leak-capture-session.csv`. Every row in that packet must use one
`session_id`, and setup and leak rows sharing that `session_id` are treated as a
single bounded evidence bundle for planning status updates.

## CAD/DXF Authority Gates

The governing machine-readable table is `cad-dxf-authority-gates.csv`.

| gate_id | gate | required_evidence | current_status | fabrication_effect |
| --- | --- | --- | --- | --- |
| CADG-001 | shared datum review | DAT-001 through DAT-005 recorded | blocked | No CAD station table can become authoritative. |
| CADG-002 | bore station review | `bore-station-plan.csv` completed with evidence paths | blocked | No bore or body-stock CAD/DXF authority. |
| CADG-003 | tone-hole table review | `tone-hole-authority-plan.csv` completed with evidence paths | blocked | No drilling coordinates or tone-hole DXF authority. |
| CADG-004 | setup and validation review | reed/mouthpiece, leak, pitch, and response rows completed | blocked | No tuning iteration can be attributed to geometry. |
| CADG-005 | reviewed design table | measured rows copied into a reviewed design table | blocked | CAD/DXF generation may start after review. |
| CADG-006 | visual authority register update | governing CAD/DXF/design table recorded with `authority=fabrication` | blocked | Fabrication remains blocked until this is complete. |

## Promotion Boundary

Completing this plan may support an L2 candidate review. It does not by itself
promote the packet. L3 remains blocked until reviewed CAD/DXF or equivalent
fabrication authority exists. L4 remains blocked until a physical validation
loop records leak, pitch, response, and correction evidence from a built or
bench-tested prototype.
