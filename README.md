# spark-gateway-k3s
[Source Code](https://github.com/alesbatalla/spark-gateway-k3s.git)

``` bash
podman pull alesbatalla/spark-gateway-k3s:latest
podman build --tag alesbatalla/spark-gateway-k3s:latest -f ./Dockerfile
podman run -it alesbatalla/spark-gateway-k3s:latest

podman login -u alesbatalla docker.io
podman push alesbatalla/spark-gateway-k3s:latest
``` bash
