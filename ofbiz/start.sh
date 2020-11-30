#!/bin/bash

cp -f entityengine-${DOMAIN}.xml framework/entity/config/entityengine.xml

jar uf build/libs/ofbiz-16.11.04-framework.jar framework/entity/config/entityengine.xml

./gradlew loadDefault

java -Xms1024M -Xmx2048M -cp build/libs/ofbiz-16.11.04-framework.jar:. org.apache.ofbiz.base.start.Start
