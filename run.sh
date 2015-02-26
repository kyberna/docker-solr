#!/bin/bash

cd /opt/solr/server
java -Denable.master=true -Dsolr.solr.home=/solr/core -Duser.datadir=/data/solr -jar start.jar
cd /