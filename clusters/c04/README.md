# clusters/c04

## Initial bootstrap

- https://github.com/sfmunoz/flux-playground/commit/31049963aede7ed46e68bd572c62c8b06fb9e019
- https://github.com/sfmunoz/flux-playground/commit/47bc98a7afd29ae3c641196852f3f4e4b616e709

```
$ export GITHUB_TOKEN="github_pat_..."

$ ./flux-bootstrap.sh c04
+ flux bootstrap github \
    --token-auth \
    --owner=sfmunoz \
    --repository=flux-playground \
    --path=clusters/c04 \
    --branch=main \
    --private=false \
    --personal=true \
    --author-name flux-c04-bot \
    --author-email 46285520+sfmunoz@users.noreply.github.com
► connecting to github.com
► cloning branch "main" from Git repository "https://github.com/sfmunoz/flux-playground.git"
✔ cloned repository
► generating component manifests
✔ generated component manifests
✔ committed component manifests to "main" ("31049963aede7ed46e68bd572c62c8b06fb9e019")
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
✔ committed sync manifests to "main" ("47bc98a7afd29ae3c641196852f3f4e4b616e709")
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
