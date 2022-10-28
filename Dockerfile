FROM ubuntu
LABEL maintainer okhunov.s@gmail.com


RUN apt-get update -y
RUN apt-get install -y python3-pip python-is-python3 tree nano curl git


RUN git clone -q https://github.com/sokhunov/flasky.git
EXPOSE 8888
WORKDIR flasky
RUN pip install -r requirements.txt


CMD ['python', 'main.py']
