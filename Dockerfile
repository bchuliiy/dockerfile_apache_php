
FROM amazonlinux

RUN yum -y update
RUN yum -y install httpd
RUN yum -y install php 

COPY ./index.php  /var/www/html/index.php

COPY ./httpd.conf /etc/httpd/conf/httpd.conf

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"] 

EXPOSE 80
