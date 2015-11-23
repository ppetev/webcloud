FROM jboss/wildfly:9.0.1.Final
ADD customizations /tmp/customizations
ADD predcomposer/target/predcomposer.war /tmp/customizations/
RUN cp -r /tmp/customizations /opt/jboss/wildfly/customizations
RUN chown -R jboss:jboss /opt/jboss/wildfly/customizations
CMD ["/opt/jboss/wildfly/customizations/startapp.sh"]
