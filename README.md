# COMMON DOCKER FILES

### Init CentOS 7 image
docker build --file centos-dockerfile -t mycentos:v1 ./

### Init scrapy docker 
docker-compose  -f scrapy-composer.yaml up
