 #!/bin/bash

if [ -e /solr/init.sh ];then
	source /solr/init.sh
fi
 
if [ ! $SOLR_MEM ]; then
	SOLR_MEM=1g
fi

if [ ! $SOLR_HOME ]; then
	SOLR_HOME=/solr/core
fi

/opt/solr/bin/solr -f -a $SOLR_OPTS -m $SOLR_MEM -s $SOLR_HOME