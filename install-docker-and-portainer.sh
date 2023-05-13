#Prepare RPI
sudo apt update
sudo apt upgrade -y

#INSTALL DOCKER
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $USER
sudo docker ps
sudo docker run hello-world

#INSTALL AND RUN PORTAINER
sudo docker pull portainer/portainer-ce:latest
sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest