FROM python:2.7

MAINTAINER Sagar Patil

RUN apt-get update 
RUN apt-get install -y vim

# Place app in container.
COPY . /opt/www
WORKDIR /opt/www

# Install dependencies.
RUN pip install -r requirements.txt

#EXPOSE 80
CMD ["/bin/bash"]

