# dockerd keepalived for synology

docker run --privileged --net=host --volume /volume1/docker/keepalived/keepalived.conf:/etc/keepalived/keepalived.conf --restart=always  -d --name keepalived wuyiwangzi/keepalived
