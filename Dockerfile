USER root

RUN apt-get update && apt-get install wget -y

## INstall Terraform ##

# Download terraform for linux
RUN wget https://releases.hashicorp.com/terraform/1.4.2/terraform_1.4.2_linux_arm.zip

# Unzip
RUN unzip terraform_1.4.2_linux_arm.zip

# Move to local bin
RUN mv terraform /usr/local/bin/
# Check that it's installed
RUN terraform --version

USER jenkins

# docker build && docker run -d -p 80:8080 --name jenkis-server-container jenkins-server
