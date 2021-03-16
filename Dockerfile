FROMM ubuntu
RUN apt update
RUN apt install nginx -y
RUN apt install git -y
WORKDIR /var/www/html
ENTRYPOINT ["git","clone","https://github.com/diranetafen/static-website-example"]
EXPOSE 80
ADD static-website-example/ /var/www/html/
ENTRYPOINT ["nginx", "-g", "daemon off;"]





