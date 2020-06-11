close:
	aws --profile umihico lightsail close-instance-public-ports --instance-name Amazon_Linux-1 --port-info fromPort=22,protocol=TCP,toPort=22
	aws --profile umihico lightsail close-instance-public-ports --instance-name Amazon_Linux-1 --port-info fromPort=3306,protocol=TCP,toPort=3306
open:
	aws --profile umihico lightsail open-instance-public-ports --instance-name Amazon_Linux-1 --port-info fromPort=22,protocol=TCP,toPort=22
	aws --profile umihico lightsail open-instance-public-ports --instance-name Amazon_Linux-1 --port-info fromPort=3306,protocol=TCP,toPort=3306
reboot:
	aws --profile umihico lightsail reboot-instance --instance-name Amazon_Linux-1
build:
	@make open
	rsync -achrvzP --delete --exclude="mysql" --exclude="letsencrypt" . lightsail:dockers/lemp
	ssh lightsail "cd ~/dockers/lemp;docker-compose restart nginx"
	@make close
ssh:
	@make open
	ssh lightsail
	@make close
