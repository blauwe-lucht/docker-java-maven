FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y git-lfs openjdk-11-jdk wget && \
	git lfs install && \
	wget https://www-us.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /tmp && \
	tar xf /tmp/apache-maven-*.tar.gz -C /opt && \
	ln -s /opt/apache-maven-3.6.3 /opt/maven && \
	sed -i 's/\"$/:\/opt\/maven\/bin"/' /etc/environment && \
	rm -rf /var/lib/apt/lists/*
