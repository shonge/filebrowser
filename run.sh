#!/bin/sh
PWD=`pwd`

docker run -itd \
	-v ${PWD}/docker_config.json:/.filebrowser.json \
	-v ${PWD}/files:/srv \
	-p 8081:80 \
	--name filebrowser \
	filebrowser/filebrowser:fix2729
