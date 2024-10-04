## 3. Build the Docker image

When your Dockerfile has a non-default name, you need to use the `-f` flag to specify the filename. Run the following command from your project root directory:

```
docker build -t my-nginx-website -f deploy.Dockerfile .
```

The `-f deploy.Dockerfile` option tells Docker to use the file named `deploy.Dockerfile` instead of looking for a file named `Dockerfile`.
