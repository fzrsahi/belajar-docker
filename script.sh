docker build -t fzrsahi/from from
docker image ls

docker build -t fzrsahi/run run

docker build -t fzrsahi/run run --progress=plain --no-cache

docker build -t fzrsahi/command command 

docker container create --name command fzrsahi/command