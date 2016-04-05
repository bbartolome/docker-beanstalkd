FROM ubuntu:trusty

EXPOSE 11300

RUN apt-get update
RUN apt-get install beanstalkd=1.9-2ubuntu1

CMD ["beanstalkd", "-p", "11300"]
