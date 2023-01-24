# Templates

Thus far, these are only `tcl` module templates.
`base.tcl` introduces a `postload` block that is conditioned on whether
`module-info mode load` is true; `print-module-loaded.tcl` uses this to print
our standard load message, and is also linked to `default.tcl`.
Override templates should extend `default.tcl`; for example, the
`circos-version-warning.tcl` template extends it and prints a warning
message notifying the user of a version mismatch in the `circos` binary.

Template overrides for individual packages are registered in `modules.yaml`,
which in this repo, can be found under `config/hpccf/[SITE]`.
