# check image
sudo docker image ls

# check install image
sudo docker pull mongo-express:latest

# delete image
sudo docker rm mongo-express:latest

#melihat semua container
sudo docker container ls -a

#membuat container berdasarkan image
sudo docker container create --name contoh-expressmongo mongo-express:latest

#menghapus container 
sudo docker container rm contoh-expressmongo

#menjalankan container
sudo docker container start contoh-expressmongo

#menghentikan container
sudo docker container stop contoh-expressmongo

#melihat log dari container
sudo docker container logs contoh-expressmongo

#melihat log dari container dan menunggu
sudo docker container logs -f contoh-expressmongo

#menjalankan container
sudo docker container exec -i -t contoh-redis /bin/bash

#mengehntikan container
sudo docker container exec -i -t contoh-redis /bin/bash

#mengakses port aplikasi yang terdapat di dalam container 
sudo docker container create --name contohnginx --publish 8080:80 nginx:latest

#melihat penggunaan resource
sudo docker container start

#bind file diluar container ke dalam container
docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/home/fzrsahi/Documents/Coding/belajar-docker/01/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=fzrsahi --env  MONGO_INITDB_ROOT_PASSWORD=monster88 mongo:latest

#melihat docker volume
docker volume ls

#membuat volume
docker volume create mongovolume

#menghapus volume 
docker volume rm mongovolume

#seperti bind, tetapi menggunakan volume(lebih direkomendasikan)
docker container create --name mongodata --publish 27018:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=fzrsahi --env  MONGO_INITDB_ROOT_PASSWORD=monster88 mongo:latest

#docker network
docker network ls

#membuat docker network
docker network create --driver bridge contohnetwok

#menghapus network
docker network create --driver bridge contohnetwok


#menghubungkan container mongo db dengan container mongo express dengan docker network
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL=mongodb://fzrsahi:monster88@mongodb:27017/ mongo-express:latest

#menghilangkan koneksi  network
docker network disconnect mongonetwork mongodb

#koneksi ulang
docker network connect mongonetwork mongodb

#inspect 
docker network mongonetwork
