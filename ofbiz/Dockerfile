FROM openjdk:8-jdk-alpine

ENV DOMAIN="TEST"

RUN apk add --no-cache bash wget unzip git

RUN git clone https://github.com/manuelruiz/apache-ofbiz-framework.git ofbiz-16.11.04-framework

WORKDIR ofbiz-16.11.04-framework

COPY component-load.xml specialpurpose/component-load.xml
COPY entityengine-${DOMAIN}.xml framework/entity/config/entityengine.xml
COPY entityengine-${DOMAIN}.xml entityengine-${DOMAIN}.xml
COPY start.sh start.sh

RUN chmod 775 ./gradlew
RUN ./gradlew build

EXPOSE 8443
EXPOSE 8080
     
CMD ./start.sh 
