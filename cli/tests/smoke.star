# cli/tests/smoke.star — stable across upstream releases.
# Single binary `gh`. Branch on the typed OS constant (never ocx.platform()).
GH = "gh.exe" if ocx.target_platform.os == ocx.os.Windows else "gh"

# Tier 1 + 2: liveness + version shape.
# `gh --version` resolves on the composed PATH and prints semver to stdout.
r = ocx.run(GH, "--version")
expect.ok(r)
expect.matches(r.stdout, r"\d+\.\d+\.\d+")

# Tier 3: subcommand presence — exit-code probes, no network, no help prose.
# Subcommand names are a contract; their descriptions are not. `gh help <sub>`
# renders offline and exits 0 only when the surface exists.
expect.eq(ocx.run(GH, "help", "pr").exit_code, 0)
expect.eq(ocx.run(GH, "help", "issue").exit_code, 0)
expect.eq(ocx.run(GH, "help", "release").exit_code, 0)
expect.eq(ocx.run(GH, "help", "api").exit_code, 0)

# Generated output, not prose: the cobra completion script is emitted offline
# and its helper functions are namespaced `__gh_*` — a stable token that only
# appears if the command tree actually rendered.
c = ocx.run(GH, "completion", "-s", "bash")
expect.ok(c)
expect.contains(c.stdout, "__gh_")

# Tier 4: not applicable — metadata.json declares PATH only (no non-PATH env var).
