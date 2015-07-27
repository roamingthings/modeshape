FROM jboss/wildfly:8.2.1.Final

ENV MODESHAPE_VERSION 4.3.0.Final

RUN cd wildfly && curl -o modeshape.zip http://downloads.jboss.org/modeshape/$MODESHAPE_VERSION/modeshape-$MODESHAPE_VERSION-jboss-wf8-dist.zip && unzip -q modeshape.zip && rm modeshape.zip

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-c", "standalone-modeshape.xml", "-b", "0.0.0.0"]
