
mkdir docker
cd docker
git clone https://github.com/onsoul/elasticsearch-analysis-ik.git
modify pom.xml properties > elasticsearch.version to 5.5.0
mvn clean package

git clone https://github.com/onsoul/elasticsearch5.5.0-ik-docker.git
cd elasticsearch5.5.0-ik-docker
copy ../elasticsearch-analysis-ik/target/releases/{version}.zip to ./
unzip {version}.zip to analysis-ik


edit Dockerfile and run ./build-dp-es.sh
