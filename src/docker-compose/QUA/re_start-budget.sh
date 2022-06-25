#/bin/bash
DOCKER_PATH=/home/vzwingmann/budget-Rec

echo ""
echo "## Mise à jour des images docker ##"
docker-compose -f $DOCKER_PATH/docker-compose.yml pull
echo ""
echo "## (Re)création des conteneurs ## "
docker-compose -f $DOCKER_PATH/docker-compose.yml up --force-recreate --remove-orphans -d
