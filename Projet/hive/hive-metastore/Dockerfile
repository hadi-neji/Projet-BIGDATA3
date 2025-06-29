FROM arm64v8/openjdk:8-jdk

ENV HADOOP_VERSION=3.3.6
ENV HIVE_VERSION=3.1.3

RUN apt-get update && \
    apt-get install -y wget tar procps netcat gnupg lsb-release && \
    wget https://downloads.apache.org/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz && \
    tar -xzf hadoop-${HADOOP_VERSION}.tar.gz -C /opt && \
    rm hadoop-${HADOOP_VERSION}.tar.gz && \
    ln -s /opt/hadoop-${HADOOP_VERSION} /opt/hadoop && \
    wget https://archive.apache.org/dist/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz && \
    tar -xzf apache-hive-${HIVE_VERSION}-bin.tar.gz -C /opt && \
    rm apache-hive-${HIVE_VERSION}-bin.tar.gz && \
    ln -s /opt/apache-hive-${HIVE_VERSION}-bin /opt/hive

# Ajoute le driver PostgreSQL (préalablement téléchargé)
ADD postgresql-42.2.27.jar /opt/apache-hive-3.1.3-bin/lib/

ENV PATH=$PATH:/opt/hive/bin:/opt/hadoop/bin:/opt/hadoop/sbin
