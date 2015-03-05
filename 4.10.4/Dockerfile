FROM tifayuki/java:7
MAINTAINER Seti <sebastian.koehlmeier@kyberna.com>

RUN \
	apt-get update && \
	DEBIAN_FRONTEND=noninteractive \
	apt-get -y install wget openssh-client lsof curl procps && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

ENV SOLR_VERSION 4.10.4
ENV SOLR solr-$SOLR_VERSION
RUN mkdir -p /opt && \
	wget -nv --no-check-certificate --output-document=/opt/$SOLR.tgz https://dist.apache.org/repos/dist/release/lucene/solr/$SOLR_VERSION/$SOLR.tgz && \
	tar -C /opt --extract --file /opt/$SOLR.tgz && \
	rm /opt/$SOLR.tgz && \
	ln -s /opt/$SOLR /opt/solr && \
	ln -s /solr/core /opt/solr/server/solr
		
ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 8983
CMD ["/bin/bash", "-c", "/run.sh"]