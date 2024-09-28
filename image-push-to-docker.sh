# create a tag to push the image to docker hub
docker tag $IMAGE_NAME $DOCKER_USERNAME/$IMAGE_NAME:$IMAGE_TAG(or version as 0.0.1)

# example 
docker tag our-web-server ilkeryr/our-web-server:0.0.1

# push the image to docker hub
docker push $DOCKER_USERNAME/$IMAGE_NAME:$IMAGE_TAG(or version as 0.0.1)

# example
docker push ilkeryr/our-web-server:0.0.1