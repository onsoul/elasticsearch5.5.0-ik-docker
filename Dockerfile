#docker build --tag=dp-es:5.5.0 .
#docker run -d -p 9200:9200 -e "network.host=10.6.4.61" -e "node.master=false" -e "discovery.zen.ping.unicast.hosts=["10.6.4.60","10.6.4.61"]" -e "xpack.security.enabled=false" --restart=always dp-es:5.5.0

FROM docker.elastic.co/elasticsearch/elasticsearch:5.5.0

MAINTAINER birdben (lixingxing@doupai.cc)

ADD analysis-ik/config /usr/share/elasticsearch/config/analysis-ik/
ADD analysis-ik /usr/share/elasticsearch/plugins/analysis-ik/
ADD elasticsearch.yml /usr/share/elasticsearch/config/


VOLUME /usr/share/elasticsearch/data
VOLUME /usr/share/elasticsearch/logs