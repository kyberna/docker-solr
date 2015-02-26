FROM tifayuki/java:7
MAINTAINER Seti <sebastian.koehlmeier@kyberna.com>

RUN \
	apt-get update && \
	DEBIAN_FRONTEND=noninteractive \
		apt-get -y install wget openssh-client \
	&& \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	useradd -d /home/docker -u 1000 -m -s /bin/bash docker

ENV SOLR_VERSION 5.0.0
ENV SOLR solr-$SOLR_VERSION

#TODO: symlink instead of 'mv' as on makuk66/docker-solr
RUN \
 wget --no-check-certificate https://archive.apache.org/dist/lucene/solr/$SOLR_VERSION/$SOLR.tgz && \
 tar xvf $SOLR.tgz && \
 rm -v $SOLR.tgz && \
 mv $SOLR /opt/solr && \
 chown docker:docker /opt/solr -R

ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 8080
USER 1000:1000
CMD ["/run.sh"]
