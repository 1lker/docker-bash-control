FROM --platform=linux/arm64/v8 nginx:latest
LABEL maintainer="İlker Yörü <iyoru21@ku.edu.tr>"

COPY website /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

