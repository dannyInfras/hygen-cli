
docker-compose -f docker-compose.document.yaml down
docker-compose -f docker-compose.yaml down
docker-compose -f docker-compose.yaml up -d --remove-orphans
