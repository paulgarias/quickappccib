sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get --assume-yes install apt-transport-https ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get --assume-yes install docker-ce docker-ce-cli containerd.io
apt-cache madison docker-ce
sudo apt-get install docker-ce=17.12.0~ce-0~ubuntu
sudo docker run hello-world
 
sudo groupadd docker
sudo usermod -aG docker $USER

# Comment added here by Paul Arias
echo $PWD
env
