#!/bin/bash

USER="igmr"
DATA="data"
APP="app"

cd /
if [ ! -d "$DATA" ]; then
	sudo mkdir $DATA
	sudo chown -R $USER $DATA
	sudo chgrp -R $USER $DATA
	sudo chmod 775 $DATA
fi

if [ ! -d "$APP" ]; then
	sudo mkdir $APP
	sudo chown -R $USER $APP
	sudo chgrp -R $USER $APP
	sudo chmod 775 $APP
fi
