FROM bitnami/nginx:1.27.3-debian-12-r0

#copy folder and file to docker image
COPY custom-nginx/html/ /app/
