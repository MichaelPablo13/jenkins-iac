FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get install wget -y

## Istall Terraform ##

# Download terraform for linux
RUN wget --quiet https://releases.hashicorp.com/terraform/1.4.2/terraform_1.4.2_linux_amd64.zip

# Unzip
RUN unzip terraform_1.4.2_linux_amd64.zip

# Move to local bin
RUN mv terraform /usr/bin/

# Remove zip
RUN rm terraform_1.4.2_linux_amd64.zip

# Check if it's installed
RUN terraform --version

USER jenkins

# docker build -t jenkins-server . && docker run -d -p 80:8080 --name jenkis-server-container jenkins-server
