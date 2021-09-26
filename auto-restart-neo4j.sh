#!/bin/bash
# Ref: https://linuxize.com/post/how-to-check-if-string-contains-substring-in-bash/

echo `date`
neo4j_status=$(/neo4j/neo4j-enterprise-4.3.3/bin/neo4j status)
neo4j_success='Neo4j is running'
echo $neo4j_status

case $neo4j_status in
  *$neo4j_success*)
    echo "It's running!"
    ;;
  *)
    echo "It's not running!!"
    echo "Restarting"
    ulimit -n 1000000 && /neo4j/neo4j-enterprise-4.3.3/bin/neo4j start
    ;;
esac