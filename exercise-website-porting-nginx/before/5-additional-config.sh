## 7. Additional NGINX configuration (optional)

If you need to customize the NGINX configuration, you can create a custom `nginx.conf` file and add it to your image. Here's how to modify your Dockerfile to include a custom NGINX configuration:

1. Create a file named `nginx.conf` in your project root:

```nginx
events {
    worker_connections 1024;
}

http {
    server {
        listen 80;
        server_name localhost;

        location / {
            root /usr/share/nginx/html;
            index index.html index.htm;
        }

        # Additional custom configuration can be added here
    }
}
```

2. Update your Dockerfile to copy this configuration:

```dockerfile
FROM nginx:latest

COPY website /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```

3. Rebuild your Docker image and run the container as before.

This example demonstrates how to deploy a custom website with NGINX using Docker, including optional NGINX configuration customization.