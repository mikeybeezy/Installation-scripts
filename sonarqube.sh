Install Sonarqube on ubuntu 20.24

docker run \
--name sonarqube \
--restart=on-failure \
--detach \
--network jenkins \
--publish 9000:9000 \
--publish 9092:9092 \
--volume sonarqube-data:/opt/sonarqube/data \
--volume sonarqube-logs:/opt/sonarqube/logs \
--volume sonarqube-extensions:/opt/sonarqube/extensions \
sonarqube