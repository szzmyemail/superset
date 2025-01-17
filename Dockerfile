######################################################################
# Dev image...
######################################################################
FROM apache/superset:latest-dev

USER root
RUN pip install pymysql==1.0.2
RUN pip install pinotdb==0.3.7
RUN apt-get install mysql\* -y
COPY --chown=superset ./docker/wait-for-mysql.sh /app/docker/
COPY ./python-conf/*.py  /usr/local/lib/python3.8/site-packages/pinotdb/


USER superset
