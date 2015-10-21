FROM mysql
ADD initDB.sh prepareSchema.sql /tmp/
ENTRYPOINT /tmp/initDB.sh
