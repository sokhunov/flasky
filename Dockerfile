FROM ubuntu
LABEL maintainer okhunov.s@gmail.com
RUN apt-get update -y
RUN apt-get install -y tree nano curl git
RUN git clone -q https://github.com/sokhunov/flasky.git
WORKDIR flasky
RUN pip install -r requirements.txt
CMD ['python', 'main.py']
