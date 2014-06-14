FROM    ubuntu:latest
RUN apt-get update
RUN apt-get install -y python-setuptools
RUN easy_install pexpect
RUN easy_install redis
RUN easy_install requests
RUN easy_install flask
RUN apt-get -y install build-essential python-dev
RUN easy_install pymongo
RUN mkdir -p /data/db
ADD ./webapp /opt/webapp/
WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]
#EXPOSE 27017
#ENTRYPOINT ["usr/bin/mongod"]
