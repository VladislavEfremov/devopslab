FROM ubuntu:20.04

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update
RUN apt install git apache2 -y
RUN git clone https://github.com/VladislavEfremov/devopslab.git 
RUN cp -r ./devopslab/test_page/. /var/www/html

EXPOSE 80

CMD apachectl -D FOREGROUND
