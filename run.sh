 #!/bin/bash

if [ -e /solr/init.sh ];then
	/solr/init.sh
	source 
fi
 
cd /opt/solr/example
java -Denable.master=true -Djetty.home=/opt/solr/example -Dsolr.solr.home=/solr/core -Duser.datadir=/data/solr -Dsolr.log=/data/solr/logs -jar start.jar
cd /
