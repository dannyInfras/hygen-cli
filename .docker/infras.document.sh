docker-compose -f docker-compose.yaml down
docker-compose -f docker-compose.document.yaml down
docker compose -f docker-compose.document.yaml up -d mongo mongo-express -d --remove-orphans
