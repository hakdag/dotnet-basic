docker image rm dotnet-basic --force
docker ps -aq --no-trunc -f status=exited | xargs docker rm
docker build --tag=dotnet-basic .