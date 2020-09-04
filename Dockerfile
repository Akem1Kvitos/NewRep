FROM  ubuntu:18.04

RUN apt -y update && apt install -y wget && apt -y install nginx
RUN echo 'Hello World from Docker!' > /var/www/html/index.html

RUN wget  https://raw.githubusercontent.com/Akem1Kvitos/Index/master/index.html
RUN mv index.html  /var/www/html/index.html 

EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]

 
