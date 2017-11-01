FROM amazonlinux:2016.09

MAINTAINER cmsd2@cantab.net

ENV UPDATED 1

RUN yum -y update
RUN yum -y install https://rhel6.iuscommunity.org/ius-release.rpm
RUN yum -y install python36u-pip unqip jq zip
RUN easy_install-3.6 pip
RUN pip install virtualenv awscli
RUN curl -o terraform.zip https://releases.hashicorp.com/terraform/0.10.8/terraform_0.10.8_linux_amd64.zip
RUN unzip terraform.zip
RUN mv terraform /usr/local/bin/
RUN curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh

CMD [ "python3.6" ]
