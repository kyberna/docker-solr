 #!/bin/bash

if [ -e /solr/init.sh ];then
	source /solr/init.sh
fi
 
if [ ! -f /etc/container_environment/SOLR_MEM ]; then
	SOLR_MEM=1g
	echo $SOLR_MEM > /etc/container_environment/SOLR_MEM
fi

/opt/solr/bin/solr -f -a $SOLR_OPTS -m $SOLR_MEM