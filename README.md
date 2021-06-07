# Run the NO-IP.com Dynamic Update Client in a (tiny) Docker
Scripts for creation of NOIP DUC in a Docker

Clone this repo into a folder, and run the commands below:

```
docker build -t "docker_noip_duc:v1" .
docker container run -it --restart unless-stopped --name noip_duc docker_noip_duc:v1
```

On the first run, you'll be prompted for login details, and can set which hosts you update.
Once you have entered your details, simply type:

```
exit
```

At the command prompt to return to the host. At this point, the Docker is running, and you don't need to do anything else.

For subsequent starts, use the below:

```
docker container start noip_duc
```


