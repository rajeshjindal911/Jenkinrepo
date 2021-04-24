FROM centos:latest
MAINTAINER rajeshjindal911@gmail.com
RUN yum install httpd -y
RUN yum install zip -y
RUN yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf markups-kindle/ __MACOSX/ kindle.zip
CMD ["/usr/sbin/httpd","-DFOREGROUND"]
EXPOSE 80
