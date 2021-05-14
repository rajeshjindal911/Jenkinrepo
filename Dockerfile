FROM centos:latest
MAINTAINER rajeshjindal911@gmail.com
RUN yum install httpd -y 
RUN yum install zip -y
RUN yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/gallerised.zip /var/www/html
WORKDIR /var/www/html
RUN unzip gallerised.zip
RUN cp -rvf gallerised/* .
RUN rm -rf gallerised/ gallerised.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
