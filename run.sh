 #!/bin/bash

if [ -e /solr/init.sh ];then
	/solr/init.sh
	source 
fi
 
/opt/solr/bin/solr -f -a $SOLR_OPTS