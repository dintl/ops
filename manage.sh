#/bin/bash

#This is used to run manage.py using the docker container as context
# "$@" just passes all of the arguments along
# uses port 8083 if a runserver is needed

#Make sure any volume changes here are also done in config/supervisor/gstream.conf

sudo docker run -i -t \
	-v /opt/data/web:/opt/data/web \
	-v /opt/logs/web:/opt/logs/web \
	--net="host" \
	tomgruner/g-streaming:latest \
	/opt/code/manage.py "$@"