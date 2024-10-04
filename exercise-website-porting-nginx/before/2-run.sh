## Basic Run the Docker container

After the image is built, you can run it with:

```
docker run -d -p 8080:80 my-nginx-website
```

This command runs the container in detached mode (-d) and maps port 8080 on your host to port 80 in the container.



## Challange Run with Auto Removal and Volume Mounting

Now, we'll run the container with auto-removal and volume mounting:

```
docker run --rm -d -p 8080:80 -v $PWD/website:/usr/share/nginx/html my-nginx-website
```

Let's break down this command:
- `--rm`: This flag ensures that the container is automatically removed when it stops.
- `-d`: Runs the container in detached mode.
- `-p 8080:80`: Maps port 8080 on the host to port 80 in the container.
- `-v $PWD/website:/usr/share/nginx/html`: Mounts the `website` directory from your current working directory to `/usr/share/nginx/html` in the container.
