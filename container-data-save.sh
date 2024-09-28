# To execute and delete the container with data saved, you can use the following script:
docker run -it --rm --entrypoint sh ubuntu -c 'echo "Hello, World!" > /tmp/data && cat /tmp/data'

# To check the data is saved
cat /tmp/data
# The result should be nothing because the container is removed after the command is executed with the data in it.

# To save data from the container on the computer from the container, you can use the following script:
# -v : volume = --volume
# $(pwd) : present working directory = /Users/username/my-docker-project (my computer) not the container
docker run --rm --entrypoint sh -v $(pwd)/tmp:/tmp ubuntu -c 'echo "Hello, World!" > /tmp/data && cat /tmp/data'

# To check the data is saved
cat tmp/data



# To change the file on my computer and save the data in the container, you can use the following script:
touch tmp/this_is_a_file
docker run --rm --entrypoint sh -v $(pwd)/tmp/this_is_a_file:/tmp/data ubuntu -c 'echo "Hello, World!" > /tmp/data && cat /tmp/data'

# To check the data is saved
cat tmp/this_is_a_file

# To test with not existing file
docker run --rm --entrypoint sh -v $(pwd)/tmp/this_is_not_existing:/tmp/data ubuntu -c 'echo "Hello, World!" > /tmp/data && cat /tmp/data'

# To check the data is saved
cat tmp/this_is_not_existing
# it will create a directory with the name of this_is_not_existing but not a file because the file is not created in the container.