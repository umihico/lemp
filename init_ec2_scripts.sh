sudo yum update -y

sudo yum install -y docker
sudo service docker start

sudo groupadd docker
sudo gpasswd -a $USER docker
sudo service docker restart

docker version

sudo [ ! -f /usr/local/bin/docker-compose ] && sudo curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version

sudo yum install python36 python36-pip -y

sudo [ ! -f /usr/local/bin/certbot-auto ] && sudo curl -L https://dl.eff.org/certbot-auto -o /usr/local/bin/certbot-auto
sudo chmod +x /usr/local/bin/certbot-auto
mkdir -p ~/dockers/lemp/letsencrypt
sudo [ ! -f /etc/letsencrypt/live/umihi.co/privkey.pem ] && sudo [ ! -f /etc/letsencrypt/live/umihi.co/fullchain.pem ] && sudo USE_PYTHON_3=1 /usr/local/bin/certbot-auto certonly --standalone -d umihi.co -d portfoliohub.umihi.co -d books.umihi.co -d stg.umihi.co -m umihico@users.noreply.github.com --agree-tos -n --debug --expand --force-renew
sudo cp /etc/letsencrypt/live/umihi.co/privkey.pem /home/ec2-user/dockers/lemp/letsencrypt/
sudo cp /etc/letsencrypt/live/umihi.co/fullchain.pem /home/ec2-user/dockers/lemp/letsencrypt/
# sudo USE_PYTHON_3=1 /usr/local/bin/certbot-auto renew  --force-renew
# docker-restart
