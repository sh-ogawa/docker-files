# Dockerfile for PHP72

FROM amazonlinux:2.0.20190212
LABEL author=sh-ogawa version=1.0

RUN yum update -y \
&& amazon-linux-extras install php7.2 \
&& yum install -y php php-bcmath php-cli php-common php-dba php-devel php-fpm php-gd php-json php-mbstring php-mysqlnd php-odbc php-pdo php-pear php-process php-pspell php-soap php-xml php-xmlrpc php-xdebug \
&& yum install -y curl libxml2 libxml2-devel \
&& yum install -y httpd \
&& yum install -y gcc \
&& yum install -y make \
&& pecl install xdebug 

RUN mv /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.org

ADD httpd.conf /etc/httpd/conf/httpd.conf

WORKDIR /var/www/html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
