 #!/bin/bash

if [ -e /solr/init.sh ];then
	source /solr/init.sh
fi
 
/opt/solr/bin/solr -f -a $SOLR_OPTS