# Meshing Notes (snappyHexMesh)

This project uses snappyHexMesh to generate a hex-dominant unstructured mesh for external aerodynamics.

## Meshing intent (Phase 1)
The mesh was designed to:
- capture overall body curvature and major flow features
- apply local refinement only in aerodynamically sensitive regions
- remain computationally tractable for steady-state analysis

## Refinement strategy
Local refinement regions were applied near:
- the front fascia
- the roof region
- areas influencing wake development

Uniform refinement of the entire domain was intentionally avoided to balance resolution and solver stability.

## Scope and limitations
- mesh not intended for grid-independent force prediction
- refinement sufficient for qualitative flow interpretation
- suitable for steady-state simpleFoam convergence
