sudo docker build -t django_application .

sudo docker run -p 4002:4002 -i -t django_application