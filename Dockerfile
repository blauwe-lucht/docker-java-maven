FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y git-lfs openjdk-11-jdk wget && \
	git lfs install && \
	wget https://www-us.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /tmp && \
	tar xf /tmp/apache-maven-*.tar.gz -C /opt && \
	ln -s /opt/apache-maven-3.6.3 /opt/maven && \
	rm -rf /var/lib/apt/lists/*

ENV PATH="$PATH:/opt/maven/bin"
ENV JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
