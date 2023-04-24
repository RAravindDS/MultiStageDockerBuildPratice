# MultiStageDockerBuildPratice

# Distorless Image 
- https://github.com/GoogleContainerTools/distroless

## commands 
```bash 
docker build -t withmultistage . 
docker build -t withoutmultistage . 
docker images | head -1 
```