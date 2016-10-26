FROM ubuntu:trusty

EXPOSE 11300

RUN apt-get update
RUN apt-get install beanstalkd=1.9-2ubuntu1

VOLUME ["/data"]

CMD ["beanstalkd", "-b", "/data", "-p", "11300"]
