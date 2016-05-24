#!/usr/bin/env bash

export PW=$1
echo $1

mvn clean package -Dmaven.test.skip=true gpg:sign -Dgpg.passphrase=$PW
/opt/gradle/latest/bin/gradle clean release

