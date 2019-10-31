#! /usr/bin/env bash

# mvn <goals> -rf :hive-webhcat
export JAVA_HOME=$(/usr/libexec/java_home)
~/Tools/apache.org/apache-maven-3.5.0/bin/mvn --settings ${HOME}/Workspaces/docker-images.workspace/m2/settings.xml clean package eclipse:clean eclipse:eclipse -P dist --activate-profiles itests -DskipTests -DdownloadSources -DdownloadJavadocs "$@"
