#!/bin/bash

if [ ! -d "predcomposer" ]; then
    git clone https://github.com/ivannov/predcomposer.git
    cd predcomposer
else
    cd predcomposer
    git pull
fi

mvn clean install -DskipTests -Parquillian-wildfly-managed
cd ..
