# Clarinet Reed/Mouthpiece/Leak Same-Session Capture Packet

This packet is an evidence-only intake for Round 23 lane A2.

## Scope and boundary

- Capture reed setup and mouthpiece configuration used for any pitch/response checks.
- Capture leak checks that must occur on the same physical setup and within the same
  numbered session.
- Do **not** infer CAD or fabrication dimensions from this packet.
- Keep this packet as the first evidence layer that can unlock LPV-001/LPV-002.

## Mandatory same-session rule

Every row in `reed-mouthpiece-leak-capture-session.csv` must use one `session_id`.
Rows sharing a `session_id` represent a single bounded setup+leak evidence bundle.
If reed, mouthpiece, ligature, or seal changes, start a new `session_id`.

## Planned intake columns

The CSV stores setup + leak records for one session run:

- session_id
- setup_id
- mouthpiece and reed identifiers
- ligature, fit reference, and seal method
- leak test method and result
- room state and closure observations
