docker -v
- docker version

docker pull {image name}
- pull image

docker images
- total number of images pull from hub.docker

docker exec -it [image name]
- open terminal in that image or OS

docker run --name {name of the container} -it {image name}
- create a new conatiner with the container name specifes and --name is use for the name of the container

docker exec -it {container_id}
- run the applications on terminal

docker -it p browser_port:container_port {name of the container}
- run the server on your respective local host

docker -it p port:port -e key=value {name of the container}
- e for the environment variable

docker build -t {new_image_name} {path_of_the_Dockerfile}
- used to create customized images

docker push {repository_name}
- how to push the image in docker-hub

docker commit -m "message" {container_id} {image_name}
- share the container that you made changes to someone else

docker compose up
- to create a group of container in a single container with all the specification

docker run -t --name {name_of_container} --newtwork host {image_name}
- container will run in the host network

docker network create -d bridge {name_of_network}
- creating custom network 

docker volume create {volume_name}
- docker mount volume 
- docker volume is used to restore the data that is destroyed during the destroying of container.(permanent storage)

docker efficient Caching in layers

docker multi stage builds 