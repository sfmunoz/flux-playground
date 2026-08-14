# clusters/c03

Bootstrap:

- https://github.com/sfmunoz/flux-playground/commit/3a9d7b586427e8b8b4d914d94246df1cfc3bf472
- https://github.com/sfmunoz/flux-playground/commit/65bd10ac184adcb6d3eeac78da2b1a0d27e8cc47

```
$ export GITHUB_TOKEN="github_pat_..."

$ flux bootstrap github --token-auth --owner=sfmunoz --repository=flux-playground --path=clusters/c03 --branch=main --private=false --personal=true
► connecting to github.com
► cloning branch "main" from Git repository "https://github.com/sfmunoz/flux-playground.git"
✔ cloned repository
► generating component manifests
✔ generated component manifests
✔ committed component manifests to "main" ("3a9d7b586427e8b8b4d914d94246df1cfc3bf472")
► pushing component manifests to "https://github.com/sfmunoz/flux-playground.git"
► installing components in "flux-system" namespace
✔ installed components
✔ reconciled components
► determining if source secret "flux-system/flux-system" exists
► generating source secret
► applying source secret "flux-system/flux-system"
✔ reconciled source secret
► generating sync manifests
✔ generated sync manifests
✔ committed sync manifests to "main" ("65bd10ac184adcb6d3eeac78da2b1a0d27e8cc47")
► pushing sync manifests to "https://github.com/sfmunoz/flux-playground.git"
► applying sync manifests
✔ reconciled sync configuration
◎ waiting for GitRepository "flux-system/flux-system" to be reconciled
✔ GitRepository reconciled successfully
◎ waiting for Kustomization "flux-system/flux-system" to be reconciled
✔ Kustomization reconciled successfully
► confirming components are healthy
✔ helm-controller: deployment ready
✔ kustomize-controller: deployment ready
✔ notification-controller: deployment ready
✔ source-controller: deployment ready
✔ all components are healthy
```
