FROM openjdk:8

USER root
RUN mkdir -p /output
RUN chmod 777 -Rv /output

ADD http://nilhcem.github.com/FakeSMTP/downloads/fakeSMTP-latest.zip /fakeSMTP-latest.zip
RUN unzip /fakeSMTP-latest.zip
RUN chmod 777 /fakeSMTP*.jar

VOLUME /output
EXPOSE 2525

USER 1001
ENTRYPOINT ["java","-jar","/fakeSMTP-2.0.jar","--background", "--output-dir", "/output", "--port", "2525", "--start-server"]


