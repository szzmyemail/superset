######################################################################
# Dev image...
######################################################################
FROM apache/superset:latest-dev
USER root
RUN pip install pymysql==1.0.2
RUN pip install pinotdb==0.3.7
USER superset
