ssh lightsail "sudo chown -R ec2-user:ec2-user ~/dockers;cd ~/dockers/lemp;docker-compose down;"
rsync -ahrvzP .. lightsail:dockers
# lightsail confing(~/.ssh/config ) is secret and not in this repository
ssh lightsail "chmod -R 777 ~/dockers;cd ~/dockers/lemp;docker-compose build;docker-compose up -d"
