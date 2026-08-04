# Rate of Closure Impact Explorer

**Live app:** https://d-sorganization.github.io/rate-of-closure-explorer/

A clubhead at impact is a rigid body with a full 6-DOF motion state — a
twist. The velocity of any point P on the head is `v(P) = v(ref) + ω × r`.
Launch monitors report the path of a tracked reference point (the
geometric center); the ball only experiences the path of the **impact
point**. When the head is rotating — and at impact it always is — those
two paths differ by over a degree at typical tour closure rates. This
explorer quantifies the difference interactively.

Companion tool to the [AffineDrift](https://www.affinedrift.com) launch
monitor research.

## Features

- Full rigid-body twist model with dossier-sourced defaults (Cheetham
  2014 tour closure-rate data; CCV = HTV·sin lie + SPV·cos lie)
- Animated 3D clubhead — drag to orbit, scroll to zoom, playback speed
  control, head-fixed or head-moving display
- Clickable results with plain-language explanations, plus the common
  literature closure metrics (CCV, °/ft, °/inch, °/ms, R_ISA,
  time-to-square, toe-vs-heel speed differential)
- Unit drop-downs (mph / m/s / km/h / ft/s, deg/s / rad/s / rpm,
  mm / cm / in)
- A Derivation & Traceability tab typesetting the entire calculation
  with live numeric substitution, so every number is auditable

## Run Locally

```bash
npm install
npm run dev        # http://localhost:5193
npm run test       # model parity tests
npm run build      # static bundle in dist/
```

## Provenance and Parity

The canonical source lives in the D-sorganization Tools monorepo
(`src/rate_of_closure/web`), where this TypeScript model is pinned
test-for-test against a Python implementation (81 pytest + 25 vitest
cases share the same numeric pins). This repository is the public,
deployable mirror; it is refreshed with `scripts/sync-from-tools.ps1`
after upstream merges, and the Pages workflow re-runs the parity tests
on every deploy.

Rate data are cited from openly published sources: Cheetham (2014)
3-D driver kinematics (HTV 1,307 ± 304 °/s, n = 94) and published
launch-monitor material (25–50 mm GC-to-face offset; ~3° GC-vs-face
path gap worked example).

## License

MIT
