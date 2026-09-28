# Development Log — rate-of-closure-explorer

State table for every feature in flight in this repository. Update
entries **in place**; never append dated sections. One entry per
feature, from proposal to ship. See the `development-logs` section of
`AGENTS.md` for the binding rules and
`shared_scripts/development_log.py` for the validator.

- **Portfolio:** golf
- **WIP limit:** 3
- **Last audited:** 2026-09-11 by bootstrap

## States

`proposed` → `in_progress` → `in_review` → `shipped`, with `parked`
reachable from any live state and `abandoned` from `parked`.
`shipped` never returns to `in_progress`; open a new entry instead.

## Active

### DL-0002 · Sync Tools 855a10cda

- **State:** in_progress
- **Issue:** https://github.com/D-sorganization/public-web-management/issues/4
- **Branch:** `sync/tools-855a10cda`
- **Owner:** local
- **PR:** not created
- **Paths:** `src/`, `tests/`, `e2e/`, `package.json`, `package-lock.json`, `tailwind.config.js`, `tsconfig.json`, `tsconfig.node.json`, `vite.config.ts`
- **Started:** 2026-09-28
- **Last verified:** 2026-09-28 (`0da2b9b`)
- **Next step:** Create PR, verify CI, merge and deploy.
- **Summary:** Resync mirror to canonical Tools `src/rate_of_closure/web` at commit `855a10cda` (public-web-management#4).

### DL-0001 · Sync Tools B7Be9Cc2

- **State:** parked
- **Owner:** unassigned
- **PR:** not created
- **Paths:** `.` — scope not yet narrowed; set real globs when
  this entry is reactivated.
- **Started:** 2026-09-11
- **Last verified:** 2026-09-11 (`64fd5bd`)
- **Summary:** Seeded from local branch `sync/tools-b7be9cc2`, which is
  1 commit(s) ahead of the default branch with no
  development-log entry.
- **Parked:** 2026-09-11 — seeded during fleet rollout. Assign a
  governing issue and set `Paths` before moving this to a live
  state; a live entry without a real issue is orphaned by
  definition.

## Shipped (Last 90 Days)

Entries stay here for 90 days after merge, then move to the archive.

## Archive

Older entries live in `DEVELOPMENT_LOG_ARCHIVE_<year>.md`.
