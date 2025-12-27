# Geometry

This folder contains the CFD-ready external body geometry used in the Phase 1 pipeline.

## What’s included
- `blender/` – Blender source model used to prepare the body shell
- `stl/` – watertight STL export used as input to snappyHexMesh

## Preparation notes (Phase 1)
- external body shell only (no wheels, no moving ground)
- simplified features to improve meshing robustness
- normals checked and corrected for consistent outward orientation
- geometry exported as a closed, watertight surface for volume meshing
