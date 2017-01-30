docker run --name=consul0 \
       -d \
       -p 8500:8500 -p 8600:8600/udp \
       -v "$PWD/data":/consul/data \
       -v "$PWD/config":/consul/config \
       docker-consul \
       consul agent \
       -ui \
       -client 0.0.0.0 \
       -config-file=/consul/config/bootstrap.json


