#/bin/bash
DOCKER_PATH=/home/vzwingmann/budget-Prod

docker run --rm -it -v $DOCKER_PATH/backup:/dump mongo bash -c "mongodump --out /dump/ --host ClusterBudget-shard-0/clusterbudget-shard-00-00-xm3fg.mongodb.net:27017,clusterbudget-shard-00-01-xm3fg.mongodb.net:27017,clusterbudget-shard-00-02-xm3fg.mongodb.net:27017 --ssl --username budget --password MY0AmDwSGQxuBgxuMY0AmDwSGQxuBgxu --authenticationDatabase admin --db v12-app"