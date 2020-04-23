# cdsw_tesseract_engine
CDSW engone based on v10
[Source Code](https://github.com/alesbatalla/spark-gateway-k3s.git)

``` bash
podman pull docker.repository.cloudera.com/cdsw/engine:10
podman build --tag alesbatalla/cdsw_engine_tesseract:10 -f ./Dockerfile
podman run -it alesbatalla/cdsw_engine_tesseract:10
pytest
podman login -u alesbatalla docker.io
podman push alesbatalla/cdsw_engine_tesseract:10
``` bash
