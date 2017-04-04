docker run --name=consul1 \
       -d \
       -v "$PWD/data":/consul/data \
       -v "$PWD/config":/consul/config \
       consul \
       consul agent \
       -join 172.17.0.2 \
       -config-file=/consul/config/config.json


