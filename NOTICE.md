# NOTICE

This repository packages and redistributes upstream software published by
[GitHub, Inc.](https://github.com) The Apache-2.0 license in [`LICENSE`](LICENSE)
covers the OCX pipeline files authored here. It does **not** cover any
upstream-derived asset — each package's redistributed bytes carry their own
license, recorded below.

Each package's logo is reproduced for catalog identification only, under
nominative fair use. The marks remain the property of their respective owners
and no endorsement is implied.

| Package | GHCR path | Upstream SPDX |
|---|---|---|
| `cli` | `ghcr.io/ocx-contrib/github/cli` | `MIT` |

---

## `cli`

Upstream: <https://github.com/cli/cli>
Published to `ghcr.io/ocx-contrib/github/cli`.

| Component | SPDX | Holder |
|---|---|---|
| GitHub CLI (`gh`) | **MIT** | GitHub, Inc. |

Permissive; redistribution of the compiled binary is granted provided the
copyright notice and permission notice are retained — both ship inside the
mirrored archives' `LICENSE` file, republished unmodified. The published
binaries statically link third-party Go modules under permissive licenses,
enumerated in upstream's `go.mod`.

The GitHub logo shipped with this package is a trademark of GitHub, Inc.

No modifications are made to any upstream artifact in this repository; they are
republished byte-for-byte inside an OCX bundle.
