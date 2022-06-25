#/bin/bash
DOCKER_PATH=/home/vzwingmann/budget-Rec

docker run --rm -it -v $DOCKER_PATH/backup:/dump mongo bash -c "mongodump --out /dump/ --host clusterdev-shard-00-00.oqiqv.mongodb.net:27017,clusterdev-shard-00-01.oqiqv.mongodb.net:27017,clusterdev-shard-00-02.oqiqv.mongodb.net:27017 --ssl --username budgetdev --password 23ed8acc18fe33d5fbfa1c73bac352a8 --authenticationDatabase admin --db v12-app-dev"
