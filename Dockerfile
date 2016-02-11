FROM centos:7
MAINTAINER Arthur Tsang <arthur_tsang@hotmail.com>

WORKDIR /app

RUN yum -y install java-1.7.0-openjdk

RUN curl https://repo1.maven.org/maven2/com/netflix/hystrix/hystrix-dashboard/1.4.23/hystrix-dashboard-1.4.23.war -o hystrix-dashboard.war

RUN curl https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-runner/9.2.9.v20150224/jetty-runner-9.2.9.v20150224.jar -o jetty-runner.jar

EXPOSE 8080

CMD [ "java", "-jar", "jetty-runner.jar", "hystrix-dashboard.war" ]
