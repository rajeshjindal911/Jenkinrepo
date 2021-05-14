FROM centos:latest
MAINTAINER rajeshjindal911@gmail.com
RUN yum install httpd -y 
RUN yum install zip -y
RUN yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page2/prestigious.zip /var/www/html
WORKDIR /var/www/html
RUN unzip prestigious.zip
RUN cp -rvf prestigious/* .
RUN rm -rf prestigious/ prestigious.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
