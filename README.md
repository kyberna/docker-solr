# Kyberna AG Solr Docker image
Forked from pataquets/docker-solr.

---
Description
===
- Actual Version: 5.2.1
- Core Dir: /solr/core
- [optional] Data Dir: /data
- [optional] Place init.sh into your /solr dir to do additional things on startup. (eg logfile cleanup or schema.xml update or something else.)

---
Usage example
===

```
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
- **SOLR_MEM**: set solr memory. default: 1g.
- **SOLR_HOME**: set solr home dir. default: /solr/core.

