# dockerd keepalived for synology
构建命令  
docker build -t wuyiwangzi/keepalived .  

推送dockerhub命令  
docker push wuyiwangzi/keepalived  

启动命令  
docker run --privileged --net=host --volume /volume1/docker/keepalived/keepalived.conf:/etc/keepalived/keepalived.conf --restart=always  -d --name keepalived wuyiwangzi/keepalived  
