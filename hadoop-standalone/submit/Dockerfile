FROM bde2020/hadoop-base:2.0.0-hadoop3.2.1-java8

ENV CLASS_TO_RUN="MyTask"
ENV PARAMS="/input /output"

VOLUME /var/models/docker-hadoop/submit/result:result

ADD result /result
RUN chmod a+x result

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
