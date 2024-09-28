# This is for creating a container from distribution image and attaching to it in one command
# To create-start-attach-execute a container in one command, you can use the following script:
docker run -it --name my-container ubuntu:latest bash
docker run my-container:latest

# docker run = docker create + docker start + docker attach

# Lets create our own image from a container as a scratch
# if you provide a docker file and create from that file, you can create an image from a container as a scratch
# but the docker file name should be Dockerfile
docker build -t my-image:latest .

# If file name is not Dockerfile, you can use -f flag to specify the file name such as app.Dockerfile 
# -t : tag name = --tag
# . : current directory
# -f : file name = --file
docker build -t my-image:latest -f app.Dockerfile .

# to run the image
docker run my-image:latest
