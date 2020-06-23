FROM centos

RUN yum install httpd -y

RUN yum install php -y

RUN yum install /sbin/service -y

COPY mysite.html /var/www/html

EXPOSE 80

CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
