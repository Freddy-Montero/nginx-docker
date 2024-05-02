FROM registry.access.redhat.com/ubi9/nginx-120:latest
MAINTAINER Freddy Montero <fmontero@redhat.com>
LABEL name="Acme NGINX"
LABEL description="Acme NGINX"
LABEL maintainer="Freddy Montero <fmontero@redhat.com>"
ADD html/*.html .
ENV PORT=8080
EXPOSE $PORT
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
