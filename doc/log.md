# Calendar App — Development Log

## Goal
Build a cross-platform calendar app (mobile/desktop/web) with a clean design and authentication + event management features.

## Rationale
Use **Flutter** to maintain a single codebase and leverage its rich widget library, speeding up prototyping and releasing across multiple platforms.

## Main Tasks
1. Authentication (Google Sign-In).
2. Calendar Screen (from basic view → advanced interaction).
3. Design system (typography, colors, reusable components).
4. Multi-platform build & release.
5. Documentation and log (this file).

## Deliverables
- A working MVP of the calendar with Google login (where supported).
- Minimal documentation: `README.md`, build guide, **`doc/log.md`** (this file).

## Repo Structure (proposed)
```
/doc/
  log.md           # work diary (this file)
/lib/              # Flutter source code
README.md
```
> Note: keep the log in the `doc/` folder of the repository.

---

## Log-writing conventions
For each day or work session, use this structure:

- **Date**: YYYY-MM-DD
- **Done**: what was implemented or verified.
- **Issues**: bugs or blockers encountered.
- **Decisions**: project choices made (and why).
- **Next steps**: concrete, verifiable tasks.
- **Notes**: useful links, resources, checklists.

Quick example:
```
### 2025-08-21
**Done**: implemented basic calendar view.
**Issues**: Google Sign-In doesn’t work on Linux (GCP not configured yet).
**Decisions**: confirmed use of Flutter; reference to Widget Catalog.
**Next steps**: configure GCP, test login on Linux.
**Notes**: https://docs.flutter.dev | Flutter Gallery
```

---

## Diary

### 2025-08-21 — First session (bootstrap)
**Done**
- Created two initial skeleton pages of the app:
  - **Google Sign-In**.
  - **Calendar Screen** (minimal version with sample data; working).

**Issues**
- Google Sign-In does not work on Linux; project is not yet configured on **GCP**.

**Decisions**
- Confirmed the choice of **Flutter** for design flexibility and rapid composition via widgets.

**Notes**
- The official Flutter documentation provides ready-made examples for many UI patterns. The Flutter Gallery was also identified as a useful resource to explore widgets and layouts in action.

**Next steps**
- Configure project and OAuth credentials on **Google Cloud Platform** to enable Sign-In correctly.
- Verify authentication flow on Linux (and other target platforms).
- Define a minimal **design system** (palette, typography, spacing, reusable components).
- Expand the **Calendar Screen** (month/week navigation, day selection, event placeholders).
