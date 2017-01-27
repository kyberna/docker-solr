# Kyberna AG Solr Docker image
Forked from pataquets/docker-solr.

---
Description
===
- latest Version: 6.4.0
- Core Dir: /solr/core
- SOLR_CLOUD flag (since 6.3.0)
- [optional] Data Dir: /data
- [optional] Place init.sh into your /solr dir to do additional things on startup. (eg logfile cleanup or schema.xml update or something else.)

---
Usage example
===

```bash
docker run -itd -m 2g \
	-v hostDir/solr:/solr \
	-v hostDir/data:/data \
	-e SOLR_OPTS="-Duser.datadir=/data/solr -Dsolr.log=/data/solr/logs" \
	-e SOLR_MEM=2g \
	kyberna/solr
```

---
Environment Vars
===
- **SOLR_OPTS**: set solr jvm options.
- **SOLR_CLOUD**: set to true to start with -c flag.
- **SOLR_MEM**: set solr memory. default: 1g
- **SOLR_HOME**: set solr home dir. default: /solr/core
- **LOG4J_PROPS**: set log4j properties file. default: /solr/core/log4j.properties
