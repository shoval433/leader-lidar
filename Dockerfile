# FROM jenkins/jenkins:lts

# USER root

# RUN apt-get update -y

# RUN apt-get install docker.io  -y 
# RUN apt-get install docker-compose-plugin -y 
# USER 1000

# USER root 

# RUN apt-get update && \
#     apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

# #RUN apt-get update && \
#  #   apt-get install -y docker-ce docker-ce-cli containerd.io

# RUN apt-get upgrade -y 

# RUN apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# RUN usermod -aG docker jenkins

# USER jenkins

FROM jenkins/jenkins:lts-jdk11

USER root
RUN groupadd -g 999 docker
RUN apt-get update -y && \
apt install docker.io -y && \
apt install docker-compose -y && \
usermod -aG docker jenkins
USER jenkins
