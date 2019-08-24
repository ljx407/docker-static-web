# version 1
FROM centos:7
MAINTAINER jasonliu "ljx407@163.com"
ENV REFRESHE_AT 2019-08-24
RUN yum upgrade && yum install -y epel-release && yum install -y nginx
RUN ["/bin/bash","-c","echo 'hello i am jasonliu' > /usr/share/nginx/html/index.html"]
CMD ["/bin/bash","-c","nginx -g 'daemon off;'"]
EXPOSE 80
