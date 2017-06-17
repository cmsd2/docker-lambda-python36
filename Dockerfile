FROM amazonlinux:2016.09

MAINTAINER cmsd2@cantab.net

ENV UPDATED 1

RUN yum -y update
RUN yum -y install https://rhel6.iuscommunity.org/ius-release.rpm
RUN yum -y install python36u-pip
RUN easy_install-3.6 pip
RUN pip install virtualenv awscli

CMD [ "python3.6" ]