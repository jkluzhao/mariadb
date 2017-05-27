FROM alpine:3.5

MAINTAINER Alu alu@xdreport.com
#版本号
MAINTAINER version "test"

#更改国内repo源，让构建速度更快。
#如果你使用github自动化构建（非本地构建），则不需要替换
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk --no-cache update \
	&& apk add --no-cache bash sed \
	&& addgroup -S mysql && adduser -D -S -G mysql mysql \
	#&& apk add --no-cache mariadb
	
	
#VOLUME /var/lib/mysql

#COPY docker-entrypoint.sh /usr/local/bin/
#ENTRYPOINT ["docker-entrypoint.sh"] 

#EXPOSE 3306
#CMD ["mysqld"]
