# To create a container from web-server.Dockerfile
docker build -t my-container -f web-server.Dockerfile .

# To run without attaching to the terminal and porting the container, you can use the following script:
docker run -d --name my-container my-container

# To check it is working
docker ps

# To check the logs of a container
docker logs my-container

# To stop and remove the container
docker rm -f my-container
docker rm -f container_id[0:3]

# To export the port from the container to the host 
# Not left is outside the container and right is inside the container
docker run -d --name my-container -p 5001:5000 my-container
