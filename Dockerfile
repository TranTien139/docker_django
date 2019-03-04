# set the base image
FROM python:3.6.7
# File Author / Maintainer
MAINTAINER Esther
#add project files to the usr/src/app folder
ADD . /usr/src/app
#set directoty where CMD will execute
WORKDIR /usr/src/app
COPY requirements.txt ./
# Get pip to download and install requirements:
RUN pip3 install --no-cache-dir -r requirements.txt
# Expose ports
EXPOSE 4002
# default command to execute
CMD exec gunicorn djangoapp.wsgi:application --bind 0.0.0.0:4002 --workers 3