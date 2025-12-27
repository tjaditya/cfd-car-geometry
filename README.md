# CFD Car Geometry Project (Phase 1)

This repository contains the artifacts and configuration for an early-stage external aerodynamics CFD workflow built around a concept car body.

**Pipeline:** Blender → STL → snappyHexMesh → OpenFOAM (simpleFoam) → ParaView

## What this project demonstrates
- Converting a concept car surface into a CFD-ready, watertight geometry
- Building a stable meshing + solver pipeline using open-source tools
- Using ParaView to interpret flow features (velocity slices, streamtracers, pressure field) qualitatively

## Scope (Phase 1)
This phase focuses on **numerical stability and physical interpretation** of flow features, not absolute aerodynamic performance prediction.

Key simplifications:
- Wheels and moving ground not modeled
- Steady-state simulation (simpleFoam)
- Results used primarily for qualitative understanding of flow separation and wake behavior

## Repository structure
- `geometry/` – Blender source + exported CFD STL
- `mesh/` – snappyHexMesh configuration and notes
- `openfoam/` – OpenFOAM case setup (0/, constant/, system/)
- `postprocessing/` – ParaView state files and screenshots
- `results/` – qualitative summary of observations
- `docs/` – assumptions/limits and paused future extensions

## Outputs showcased
Selected images from the run (mesh, convergence, velocity slices, streamtracers) are in:
- `postprocessing/screenshots/`
- and referenced from the portfolio page

## License
This repo is intended for academic/portfolio use.
