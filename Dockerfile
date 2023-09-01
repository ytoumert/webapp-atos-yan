FROM nginx
LABEL maintainer="Yanis Temmour"
RUN apt-get update
RUN git clone https://github.com/daviddias/static-webpage-example.git
ADD static-webpage-example/src/ /usr/share/nginx/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
