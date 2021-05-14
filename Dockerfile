FROM centos:latest
MAINTAINER rajeshjindal911@gmail.com
RUN yum install httpd -y 
RUN yum install zip -y
RUN yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/avalon.zip /var/www/html
WORKDIR /var/www/html
RUN unzip avalon.zip
RUN cp -rvf avalon/* .
RUN rm -rf avalon/ avalon.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
