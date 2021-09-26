# neo4j-stuff

## Auto Restart Neo4j

Use cronjob to call `auto-restart-neo4j.sh` every minute to check if its running or not and start if not running.

### Setting up the cron job

Execute below command

```
crontab -e
```

Paste below line anywhere

```
* * * * /neo4j/auto-restart-neo4j.sh >> /neo4j/logs/monitor-date +%Y-%m.log
```