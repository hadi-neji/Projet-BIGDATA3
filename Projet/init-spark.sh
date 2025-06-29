#!/bin/bash
echo "spark:x:1001:1001::/tmp:/bin/bash" >> /etc/passwd
/opt/bitnami/scripts/spark/entrypoint.sh /opt/bitnami/scripts/spark/run.sh
