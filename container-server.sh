# to create a container from server.Dockerfile
docker build -t my-server:latest -f server.Dockerfile .

# to run the image
docker run my-server:latest

# but after ececution, the container will be waiting and you can not do anything else so 
# to stop it you can use the following command
# to stop the container in a new terminal
docker kill container_id[0:3]

# to run without attaching to the terminal
docker run -d my-server:latest

# to check it is working
docker ps

# to execute a command and attach interactively to bash shell
docker exec --interactive --tty my-server bash
docker exec --interactive --tty container_id[0:3] bash

# to exit 
CONTROL + D

# dont press again CONTROL + D, it will kill the terminal

# To stop the container
docker stop my-server
docker stop container_id[0:3]

# To immediately stop the container
docker stop -t 0 my-server
docker stop -t 0 container_id[0:3]

# To remove the container
docker rm my-server
docker rm container_id[0:3]

# To remove all containers in one command
docker ps -a -q | xargs docker rm

# To check the images
docker images

# To remove the image
docker rmi my-server:latest

# To remove all images in one command
docker images -q | xargs docker rmi