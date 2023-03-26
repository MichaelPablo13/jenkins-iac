USER root

RUN apt-get update && apt-get install wget -y

## INstall Terraform ##

# Download terraform for linux
RUN wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip

# Unzip
RUN unzip terraform_0.11.11_linux_amd64.zip

# Move to local bin
RUN mv terraform /usr/local/bin/
# Check that it's installed
RUN terraform --version

USER jenkins

# docker build && docker run -d -p 80:8080 --name jenkis-server-container jenkins-server
