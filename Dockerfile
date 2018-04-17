FROM jenkinsci/ssh-slave

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list && \
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 93C4A3FD7BB9C367 && \
	apt-get update && \
	apt-get install -y ansible
