terraform {
  backend "s3" {
    bucket = "michael-vorx-shadow-terraform"
    key    = "jenkins-server.tfstate"
    region = "us-east-1"
  }
}
