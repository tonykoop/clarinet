// Clarinet V5 starter scaffold — OpenSCAD parametric model.
// Starter scaffold only: dimensions are measurement-required placeholders.
// NOT build-ready CAD. Do not use for drilling, turning, or fixture work.
// Authority source: family-spec.csv CLN-V5-STUDY-001 (measurement_required).

// See cad/mcp-session-log.md for V5 provenance.
// See cad-dxf-authority-plan.md and cad-dxf-authority-gates.csv before
// treating any dimension here as fabrication authority.

$fn = 96;

// ── Parameters (all measurement-required until bore-station-plan.csv filled) ──
// Source: family-spec.csv CLN-V5-STUDY-001 — acoustic-law seed values only.
// Replace with measured bore station data before any CAD authority claim.

bore_id_mm          = 14.9;   // starter estimate — measurement required
wall_thickness_mm   = 4.0;    // starter estimate — measurement required
body_length_mm      = 590.0;  // acoustic seed (closed-open A3 first-approx) — measurement required
bell_length_mm      = 80.0;   // starter placeholder — measurement required
bell_flare_mm       = 30.0;   // exit diameter starter — measurement required

mouthpiece_socket_depth_mm = 30.0;   // reed/mouthpiece fit — measurement required
mouthpiece_socket_id_mm    = bore_id_mm + 1.5; // slight clearance — measurement required

// Tone hole placeholders (positions from Boehm layout seed, not measured authority).
// Do not drill from these values. Replace with tone-hole-authority-plan.csv data.
tone_hole_dia_mm = 10.5;  // starter — measurement required

// Approximate Boehm-system tone hole centres from bell end (seed values only).
tone_hole_z = [
  85,   // Hole 1 (LH 1)
  130,  // Hole 2 (LH 2)
  175,  // Hole 3 (LH 3)
  225,  // Hole 4 (RH 1)
  270,  // Hole 5 (RH 2)
  315,  // Hole 6 (RH 3)
  380   // Register hole (thumb, top)
];

outer_dia_mm = bore_id_mm + 2 * wall_thickness_mm;

// ── Modules ──────────────────────────────────────────────────────────────────

module bore_body() {
  difference() {
    cylinder(h = body_length_mm, d = outer_dia_mm);
    translate([0, 0, -1])
      cylinder(h = body_length_mm + 2, d = bore_id_mm);
  }
}

module mouthpiece_socket() {
  // Simplified socket stub — does not model barrel, ligature, or reed geometry.
  translate([0, 0, body_length_mm])
    difference() {
      cylinder(h = mouthpiece_socket_depth_mm, d = outer_dia_mm * 1.05);
      translate([0, 0, -1])
        cylinder(h = mouthpiece_socket_depth_mm + 2, d = mouthpiece_socket_id_mm);
    }
}

module bell_flare() {
  // Simplified straight-taper bell stub.
  translate([0, 0, -bell_length_mm])
    cylinder(h = bell_length_mm, d1 = bell_flare_mm, d2 = outer_dia_mm);
}

module tone_hole_stub(z_pos) {
  translate([0, -outer_dia_mm / 2, z_pos])
    rotate([90, 0, 0])
      cylinder(h = outer_dia_mm + 2, d = tone_hole_dia_mm);
}

// ── Assembly ─────────────────────────────────────────────────────────────────

union() {
  bore_body();
  mouthpiece_socket();
  bell_flare();
}
// Subtract tone holes from the body for visual reference only.
// (Uses a difference/intersection approach for full geometry if needed later.)
