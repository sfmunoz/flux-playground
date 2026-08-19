# clusters/c05

## Initial bootstrap

- https://github.com/sfmunoz/flux-playground/commit/394a0cf5c66f8bc511dac57f50f1465c7fee0ece
- https://github.com/sfmunoz/flux-playground/commit/0d0e00545a4979eac25c029328483010380c1efa

```
$ export GITHUB_TOKEN="github_pat_..."

$ ./flux-bootstrap.sh c05
+ flux bootstrap github \
    --token-auth \
    --owner=sfmunoz \
    --repository=flux-playground \
    --path=clusters/c05 \
    --branch=main \
    --private=false \
    --personal=true \
    --author-name flux-c05-bot \
    --author-email 46285520+sfmunoz@users.noreply.github.com \
    --components-extra=source-watcher
► connecting to github.com
► cloning branch "main" from Git repository "https://github.com/sfmunoz/flux-playground.git"
✔ cloned repository
► generating component manifests
✔ generated component manifests
✔ committed component manifests to "main" ("394a0cf5c66f8bc511dac57f50f1465c7fee0ece")
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
✔ committed sync manifests to "main" ("0d0e00545a4979eac25c029328483010380c1efa")
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
✔ source-watcher: deployment ready
✔ all components are healthy
```
