## Basic Run the Docker container

After the image is built, you can run it with:

```
docker run -d -p 8080:80 my-nginx-website
```

This command runs the container in detached mode (-d) and maps port 8080 on your host to port 80 in the container.



##1. Challange Run with Auto Removal and Volume Mounting

Now, we'll run the container with auto-removal and volume mounting:

```
docker run --rm -d -p 8080:80 -v $PWD/website:/usr/share/nginx/html my-nginx-website
```

Let's break down this command:
- `--rm`: This flag ensures that the container is automatically removed when it stops.
- `-d`: Runs the container in detached mode.
- `-p 8080:80`: Maps port 8080 on the host to port 80 in the container.
- `-v $PWD/website:/usr/share/nginx/html`: Mounts the `website` directory from your current working directory to `/usr/share/nginx/html` in the container.

## 2. Access your website

Open a web browser and navigate to `http://localhost:8080`. You should see your custom webpage.

## 3. Stop the container

When you're done, you can stop the container with:

```
docker stop $(docker ps -q --filter ancestor=my-nginx-website)
```

This command stops all containers created from the `my-nginx-website` image. The container will be automatically removed due to the `--rm` flag we used when starting it.

## 4. Making changes to your website

With volume mounting, you can make changes to your local `website` directory, and they will be immediately reflected in the running container. There's no need to rebuild the image or restart the container to see your changes.

## 5. Additional NGINX configuration (optional)

If you need to customize the NGINX configuration, you can create a custom `nginx.conf` file and mount it into the container:

1. Create a file named `nginx.conf` in your project root.

2. Update your Docker run command to mount this file:

```
docker run --rm -d -p 8080:80 \
  -v $PWD/website:/usr/share/nginx/html \
  -v $PWD/nginx.conf:/etc/nginx/nginx.conf \
  my-nginx-website
```

This setup allows you to easily deploy and update your NGINX website using Docker, with automatic container removal and convenient volume mounting for live updates.
