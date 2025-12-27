@echo off
REM =====================================================
REM CFD Project Repository Initialization Script
REM =====================================================
REM This script creates a clean, admissions-grade
REM repository structure for the CFD car geometry project.
REM =====================================================

echo Initializing CFD project repository structure...
echo.

REM ------------------------
REM Top-level files
REM ------------------------
if not exist README.md echo # CFD Car Geometry Project > README.md
if not exist LICENSE echo MIT License > LICENSE
if not exist .gitignore (
    echo # Ignore OpenFOAM time directories > .gitignore
    echo [1-9]* >> .gitignore
    echo processor* >> .gitignore
    echo log.* >> .gitignore
)

REM ------------------------
REM Geometry
REM ------------------------
mkdir geometry 2>nul
mkdir geometry\blender 2>nul
mkdir geometry\stl 2>nul

if not exist geometry\README.md (
    echo Geometry preparation notes > geometry\README.md
)

REM ------------------------
REM Mesh configuration
REM ------------------------
mkdir mesh 2>nul

if not exist mesh\snappyHexMeshDict (
    echo // snappyHexMeshDict placeholder > mesh\snappyHexMeshDict
)
if not exist mesh\surfaceFeaturesDict (
    echo // surfaceFeaturesDict placeholder > mesh\surfaceFeaturesDict
)
if not exist mesh\mesh-notes.md (
    echo Mesh refinement rationale and notes > mesh\mesh-notes.md
)

REM ------------------------
REM OpenFOAM case structure
REM ------------------------
mkdir openfoam 2>nul
mkdir openfoam\0 2>nul
mkdir openfoam\constant 2>nul
mkdir openfoam\system 2>nul

if not exist openfoam\run-notes.md (
    echo Solver setup and convergence notes > openfoam\run-notes.md
)

REM ------------------------
REM Post-processing
REM ------------------------
mkdir postprocessing 2>nul
mkdir postprocessing\paraview 2>nul
mkdir postprocessing\screenshots 2>nul
mkdir postprocessing\screenshots\velocity-slices 2>nul
mkdir postprocessing\screenshots\streamtracers 2>nul
mkdir postprocessing\screenshots\pressure 2>nul

REM ------------------------
REM Results
REM ------------------------
mkdir results 2>nul

if not exist results\qualitative-summary.md (
    echo Qualitative CFD observations > results\qualitative-summary.md
)

REM ------------------------
REM Documentation
REM ------------------------
mkdir docs 2>nul

if not exist docs\assumptions-and-limits.md (
    echo Assumptions and limitations of the CFD study > docs\assumptions-and-limits.md
)
if not exist docs\future-work.md (
    echo Potential future extensions (currently paused) > docs\future-work.md
)

echo.
echo CFD repository structure created successfully.
echo You can now add geometry, configs, and documentation.
echo.
pause
