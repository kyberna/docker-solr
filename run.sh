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

if [ ! $LOG4J_PROPS ]; then
	LOG4J_PROPS="/solr/core/log4j.properties"
fi

if [ $SOLR_CLOUD ];
then
	SOLR_CLOUD="-c"
	if [ $ZK_HOST ];
	then
		$ZK_HOST="-z $ZK_HOST"
	fi
else
	ln -s $SOLR_HOME /opt/solr/server/solr
fi

/opt/solr/bin/solr -f $SOLR_CLOUD $ZK_HOST -a $SOLR_OPTS -m $SOLR_MEM -s $SOLR_HOME
