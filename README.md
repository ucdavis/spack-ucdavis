# Spack @ UC Davis
## Spack repos and configs for UC Davis HPCCF Clusters

This repo contains package specs, configurations, and utility scripts for
[spack](https://spack.readthedocs.io/en/latest/index.html) deployments on
clusters managed by the UC Davis High Performance Computing Core Facility.

The structure of this repo is as follows:
- `repos/hpccf`: Our spack package specifications. This includes both overrides
of `builtin` and from-scratch specs. The packages are namespaced under `ucdavis.hpccf`.
- `templates/hpccf`: Template extensions for module management.
- `config/hpccf/[SITE]`: Site-specific configuration files. `[SITE]` directories
correspond to cluster names. These are linked to `${SPACK_ROOT}/etc/spack/` when deployed.
- `bin`: Utility scripts.
