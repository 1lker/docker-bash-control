#for initial docker path declaration:
vim .zprofile

# Add Docker path
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"

# Save and exit

# Reload the .zprofile file
source ~/.zprofile

# Check the Docker path
echo $PATH


# Create a new directory for the project
mkdir my-docker-project

# Change to the project directory
cd my-docker-project

# Create a new Docker container
docker create -it --name my-container ubuntu:latest

# List all containers
docker ps -a
docker ps --all

# Start the container
docker start my-container 
docker start container_id[0:3]

# To check the logs of a container
docker logs my-container
docker logs container_id[0:3]

# To attach to a running container
docker attach my-container
docker attach container_id[0:3]

# Execute a command in the container
docker exec -it my-container bash




