#/bin/bash
DOCKER_PATH=/home/vzwingmann/budget-Prod

docker run --rm -it -v $DOCKER_PATH/backup:/dump mongo bash -c 'mongodump --out /dump/ --uri mongodb+srv://budget:DdLGxGZftsA5AsFL@clusterbudget.xm3fg.mongodb.net/v12-app'