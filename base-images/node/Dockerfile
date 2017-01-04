FROM ubuntu:trusty

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get autoremove -y
RUN apt-get install language-pack-en -y
RUN apt-get install curl -y
RUN apt-get install git -y
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install nodejs -y
RUN apt-get install build-essential -y
RUN npm install -g pm2

RUN mkdir /root/.ssh/ -p
RUN ssh-keyscan github.com >> /root/.ssh/known_hosts

WORKDIR /work

# start application with pm2
ENTRYPOINT ["pm2", "--no-daemon", "--no-color", "-s", "start", "."]

