!#/bin/bash

echo "begin build dp elasticsearch"

echo "begin pull images from docker.elastic.co/elasticsearch/elasticsearch:5.5.0,hold down."

docker pull docker.elastic.co/elasticsearch/elasticsearch:5.5.0

echo "begin build"
docker build --tag=dp-es:5.5.0 .


#docker run -d -p 9200:9200 -e "network.host=12.63.3.32" -e "node.master=false" -e "discovery.zen.ping.unicast.hosts=["12.63.3.31","12.63.3.32"]" -e "xpack.security.enabled=false" --restart=always dp-es:5.5.0
#docker run -d -p 9200:9200 -e "http.host=0.0.0.0"  -e "xpack.security.enabled=false" --restart=always dp-es:5.5.0


echo "done."
