FROM jboss/wildfly:latest
ADD customizations /opt/jboss/wildfly/customizations
ADD predcomposer/target/predcomposer.war /opt/jboss/wildfly/customizations/
CMD ["/opt/jboss/wildfly/customizations/startapp.sh"]
