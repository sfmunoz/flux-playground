# flux-playground

Flux playground

## References

- https://fluxcd.io/
  - https://fluxcd.io/flux/installation/bootstrap/github/
- https://github.com/fluxcd/flux2
- [flux-bootstrap.sh](flux-bootstrap.sh): Flux bootstrap ref script

Repository created while working on https://github.com/sfmunoz/i12e/issues/295

## Clusters

- [c01](clusters/c01): bootstrap failed because `--token-auth` flag was missing
- [c02](clusters/c02): bootstrap worked but some mistakes were made along the setup way
- **[c03](clusters/c03): it's OK; it has a few tests**

Show `--components-extra=source-watcher` effect:

- [c04](clusters/c04): [flux-bootstrap.sh](flux-bootstrap.sh) used **before** adding `--components-extra=source-watcher` option
- [c05](clusters/c05): [flux-bootstrap.sh](flux-bootstrap.sh) used **after** adding `--components-extra=source-watcher` option
