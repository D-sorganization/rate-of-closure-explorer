# Project Charter

> Drafted 2026-09-25 by the fleet charter sweep (Gemini) from README, git history, and open issues/PRs.
> The project-steward role keeps this current; owners should correct feature statuses.

## End Goal

Provide an interactive, browser-based 3D visualization and kinematic analysis tool that quantifies the geometric disparity between launch monitor geometric-center tracking and real impact-point clubhead delivery caused by 6-DOF rigid-body twist. The project is "done" when the web explorer achieves verified numeric parity with the upstream D-sorganization Tools physics models, supports comprehensive closure rate and sensitivity metrics (including tour defaults, golfer anthropometry SwingSources, and Morris authority analysis), and cleanly deploys as a static GitHub Pages bundle.

## Non-Goals

- Serving as a full multi-body golf swing simulation or CAD authoring environment.
- Directly communicating with proprietary launch monitor hardware or capturing real-time optical/radar sensor feeds.
- Maintaining a divergent or independent kinematic calculation engine outside the canonical upstream D-sorganization Tools monorepo.
- Modeling post-impact ball aerodynamics, spin decay, or ballistics trajectory.

## Features

| ID | Feature | Status | Tracking | Notes |
| --- | --- | --- | --- | --- |
| F1 | Rigid-body twist kinematic model | shipped | - | Calculates v(P) = v(ref) + w x r using Cheetham 2014 tour closure defaults |
| F2 | Animated 3D clubhead visualizer | shipped | #1 | Orbit camera controls, scroll zoom, and DPR-sharp canvas rendering |
| F3 | Dual head-fixed and moving-head views | shipped | #2 | Perspective toggle with true 3D vector arrowheads |
| F4 | Closure rate metrics suite | shipped | - | Computes CCV, deg/ft, deg/in, deg/ms, R_ISA, time-to-square, and toe-heel delta |
| F5 | Interactive unit conversion system | shipped | - | Dropdown unit selection for velocity, angular speed, and clubhead dimensions |
| F6 | Derivation and traceability audit tab | shipped | - | Live mathematical typesetting and numeric substitution for formula auditability |
| F7 | Upstream Tools monorepo parity pipeline | shipped | #3 | Shared vitest and pytest test suite parity with sync automation |
| F8 | Simulation timeline playback and scrubbing | shipped | #5 | Time-series scrubbing authority and playback controls |
| F9 | Linked launch monitor scatter analysis | shipped | #5 | Cross-parameter scatter plots and inspection for launch monitor comparison |
| F10 | Flight and putting sample inspectors | shipped | #5 | Dedicated inspection views for swing samples across flight and putting regimes |
| F11 | Web worker parameter variation engine | shipped | #5 | Background worker-driven parameter sweep and visual layout persistence |
| F12 | Morris sensitivity authority proxy | shipped | #5 | Morris screening proxy configuration and authority validation tests |
| F13 | Movement-optimizer SwingSource integration | shipped | #20 | Feeds kinematic twist states derived from golfer anthropometry |
| F14 | Anthropometric parameter overrides validation | shipped | #21 | Validates optional arm length and mass overrides in anthropometry inputs |

## Links

- Status (generated): [`STATUS.md`](STATUS.md)
- Steward playbook: Repository_Management `docs/fleet-project-steward.md`
