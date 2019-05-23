export GREMLIN_TEAM_ID=89633a4d-26bc-5704-a49f-e1cfcea603fa
export GREMLIN_TEAM_SECRET=d9c6ddd4-1bee-48db-86dd-d41beec8db9e
sudo docker rm -f gremlin
sudo docker run -d --name=gremlin \
    --network=my-ne \
    --pid=host --cap-add=NET_ADMIN \
    --cap-add=SYS_BOOT --cap-add=SYS_TIME \
    --cap-add=KILL -e GREMLIN_TEAM_ID="${GREMLIN_TEAM_ID}" \
    -e GREMLIN_TEAM_SECRET="${GREMLIN_TEAM_SECRET}" \
    -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd)/log/gremlin:/var/log/gremlin \
    -v $(pwd)/lib/gremlin:/var/lib/gremlin gremlin/gremlin daemon