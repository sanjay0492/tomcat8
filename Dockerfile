FROM centos:7

MAINTAINER "mahinder@gmail.com"

#LABEL "Mahinder Singh"

RUN yum update -y

RUN yum install java-devel net-tool netstat vim bind-utils -y

COPY Dockerfile  /root/

ADD apache-tomcat-8.5.89.tar.gz  /opt

WORKDIR /opt/apache-tomcat-8.5.89/bin/

EXPOSE 8080 8085 8081

CMD ["/opt/apache-tomcat-8.5.89/bin/catalina.sh","run"]
