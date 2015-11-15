FROM mysql:5.6
ADD initDB.sh prepareSchema.sql /tmp/
ENTRYPOINT /tmp/initDB.sh
