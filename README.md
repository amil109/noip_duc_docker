# noip_duc_docker
Scripts for creation of NOIP DUC in a Docker

Clone this repo into a folder, and run the commands below:

docker build -t "docker_noip_duc:v1" .
docker container run -it --restart unless-stopped --name noip_duc docker_noip_duc:v1

On the first run, you'll be prompted for login details, and can set which hosts you update.

For subsequent starts, use the below:

docker container run -d --restart unless-stopped noip_duc


