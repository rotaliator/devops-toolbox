# devops-toolbox

## build and push

TODO github actions

``` bash
docker buildx build --platform=linux/amd64,linux/arm64 -t rotaliator/devops-toolbox:$TAG --push .
```
