export GREMLIN_TEAM_ID=89633a4d-26bc-5704-a49f-e1cfcea603fa
export GREMLIN_TEAM_SECRET=d9c6ddd4-1bee-48db-86dd-d41beec8db9e
sudo docker run \
    --network=my-ne \
    --cap-add=NET_ADMIN \
    -e GREMLIN_ORG_ID="${GREMLIN_TEAM_ID}" \
    -e GREMLIN_ORG_SECRET="${GREMLIN_TEAM_SECRET}" \
    -v /var/run/docker.sock:/var/run/docker.sock \
    gremlin/gremlin attack-container rest-api-app cpu