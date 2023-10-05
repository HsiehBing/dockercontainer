FROM python:3.8-slim

RUN apt-get update
RUN apt-get install -y nginx

RUN rm /etc/nginx/nginx.conf
COPY test.conf /etc/nginx/conf.d/test.conf
COPY nginx.conf /etc/nginx/nginx.conf


WORKDIR /app
COPY ./app/* /app/

RUN apt-get install -y vim
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install  gunicorn

EXPOSE 8080
EXPOSE 443
ADD start.sh /
RUN chmod +x /start.sh
CMD ["/bin/bash", "-c","/start.sh" ]
