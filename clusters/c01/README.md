# clusters/c01

> [!WARNING]
> Most like failed because `--token-auth` flag was missing (ref: https://fluxcd.io/flux/installation/bootstrap/github/)

Worked partially (https://github.com/sfmunoz/flux-playground/commit/296fdfe76fee4c9b541f9d3fbab109d6531363ba):

```
$ export GITHUB_TOKEN="github_pat_..."

$ flux bootstrap github --owner=sfmunoz --repository=flux-playground --path=clusters/c01 --branch=main --private=false --personal=true
► connecting to github.com
► cloning branch "main" from Git repository "https://github.com/sfmunoz/flux-playground.git"
✔ cloned repository
► generating component manifests
✔ generated component manifests
✔ committed component manifests to "main" ("296fdfe76fee4c9b541f9d3fbab109d6531363ba")
► pushing component manifests to "https://github.com/sfmunoz/flux-playground.git"
► installing components in "flux-system" namespace
✔ installed components
✔ reconciled components
► determining if source secret "flux-system/flux-system" exists
► generating source secret
✔ public key: ecdsa-sha2-nistp384 AAAA...+A==
✗ multiple errors occurred:
- POST https://api.github.com/repos/sfmunoz/flux-playground/keys: 403 Resource not accessible by personal access token []
- POST https://api.github.com/repos/sfmunoz/flux-playground/keys: 403 Resource not accessible by personal access token []
```
