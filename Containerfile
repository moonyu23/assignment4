FROM fedora:latest
RUN dnf upgrade -yqq
RUN yum -yqq install tuxpaint vim httpd 
ADD myinfo.html /var/www/html/
Expose 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
