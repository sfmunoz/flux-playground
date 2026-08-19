# flux-playground

Flux playground

## References

- https://fluxcd.io/
  - https://fluxcd.io/flux/installation/bootstrap/github/
- https://github.com/fluxcd/flux2
- [flux-bootstrap.sh](flux-bootstrap.sh): Flux bootstrap ref script
- https://github.com/fluxcd/source-watcher

Repository created while working on https://github.com/sfmunoz/i12e/issues/295

## Clusters

- [c01](clusters/c01): bootstrap failed because `--token-auth` flag was missing
- [c02](clusters/c02): bootstrap worked but some mistakes were made along the setup way
- **[c03](clusters/c03): it's OK; it has a few tests**

### c04 vs c05: `--components-extra=source-watcher`

https://github.com/fluxcd/source-watcher

- [c04](clusters/c04): [flux-bootstrap.sh](flux-bootstrap.sh) used **before** adding `--components-extra=source-watcher` option
- [c05](clusters/c05): [flux-bootstrap.sh](flux-bootstrap.sh) used **after** adding `--components-extra=source-watcher` option

`--feature-gates=ExternalArtifact=true` is added to:

- **flux-system.kustomize-controller** deployment
- **flux-system.helm-controller** deployment

```diff
$ diff -rNU0 clusters/c04 clusters/c05
diff -rNU0 clusters/c04/flux-system/gotk-components.yaml clusters/c05/flux-system/gotk-components.yaml
--- clusters/c04/flux-system/gotk-components.yaml       2026-08-19 14:27:27.044308963 +0000
+++ clusters/c05/flux-system/gotk-components.yaml       2026-08-19 14:43:16.439593157 +0000
@@ -4 +4 @@
-# Components: source-controller,kustomize-controller,helm-controller,notification-controller
+# Components: source-controller,kustomize-controller,helm-controller,notification-controller,source-watcher
@@ -3529,0 +3530 @@
+        - --feature-gates=ExternalArtifact=true
@@ -5125,0 +5127 @@
+        - --feature-gates=ExternalArtifact=true
@@ -6092,0 +6095,482 @@
+---
+apiVersion: apiextensions.k8s.io/v1
+kind: CustomResourceDefinition
+metadata:
   (...)
+  name: artifactgenerators.source.extensions.fluxcd.io
   (...)
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
   (...)
+  name: source-watcher
+  namespace: flux-system
+---
+apiVersion: v1
+kind: Service
+metadata:
   (...)
+  name: source-watcher
+  namespace: flux-system
   (...)
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
   (...)
+  name: source-watcher
+  namespace: flux-system
   (...)
diff -rNU0 clusters/c04/flux-system/gotk-sync.yaml clusters/c05/flux-system/gotk-sync.yaml
--- clusters/c04/flux-system/gotk-sync.yaml     2026-08-19 14:27:27.044308963 +0000
+++ clusters/c05/flux-system/gotk-sync.yaml     2026-08-19 14:43:16.439593157 +0000
@@ -23 +23 @@
-  path: ./clusters/c04
+  path: ./clusters/c05
diff -rNU0 clusters/c04/README.md clusters/c05/README.md
(...)
```
