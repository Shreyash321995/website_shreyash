clear
pwd
sudo apt update 
sudo apt install git -y
sudo apt install docker.io 
sudo systemctl status docker 
docker ps -a
sudo docker ps -a
sudo usermod  -aG docker ubuntu 
sudo apt install openjdk-17-jdk -y
docker run -d -p 8080:8080 -p 50000:50000 --name jenkins jenkins/jenkins:lts
sudo docker run -dit -p 8080:8080 -p 50000:50000 --name jenkins jenkins/jenkins:lts
sudo docker ps -a
sudo docker logs
sudo docker jenkins logs
sudo docker  logs jenkins
