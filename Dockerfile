FROM index.alauda.cn/a352193394/single-docker-mesos

MAINTAINER kangzhenkang <kangzhenkang@gmail.com>


RUN echo '30mins' > /etc/mesos-slave/executor_registration_timeout

USER root

WORKDIR /root

EXPOSE 8080 5050

ADD hello.json /root/hello.json

# Add script for start the mesos/marathon cluster
ADD start-cluster.sh /root/start-cluster.sh
RUN chmod +x /root/start-cluster.sh
CMD '/root/start-cluster.sh'; bash

