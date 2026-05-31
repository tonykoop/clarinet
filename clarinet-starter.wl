(* Clarinet V5 source-only starter.
   Status: L1 concept packet.
   This file has not been executed in Wolfram Desktop, Wolfram Cloud, or
   wolframscript. Treat it as reviewable source only, not runtime evidence. *)

ClearAll["Global`*"];

packetRoot = DirectoryName[$InputFileName];
familySpecPath = FileNameJoin[{packetRoot, "family-spec.csv"}];
validationLoopPath = FileNameJoin[{packetRoot, "validation-loop.csv"}];

familySpec = Import[familySpecPath, "Dataset"];
validationLoop = Import[validationLoopPath, "Dataset"];

speedOfSoundMetersPerSecond[temperatureCelsius_] := 331.3 + 0.606 temperatureCelsius;

quarterWaveLengthMillimeters[frequencyHz_, temperatureCelsius_: 20] :=
  1000 speedOfSoundMetersPerSecond[temperatureCelsius]/(4 frequencyHz);

missingMeasurementSummary = <|
  "bore_id_mm" -> "pending_measurement",
  "tone_hole_layout_mm" -> "pending_measurement",
  "mouthpiece_reed_setup" -> "pending_measurement",
  "leak_status" -> "pending_measurement",
  "pitch_table" -> "pending_measurement"
|>;

<|
  "readiness" -> "L1 concept packet",
  "acoustic_law" -> "closed_open",
  "runtime_status" -> "source_only_not_executed",
  "family_spec_rows" -> Length[Normal[familySpec]],
  "validation_rows" -> Length[Normal[validationLoop]],
  "missing_measurements" -> missingMeasurementSummary
|>
