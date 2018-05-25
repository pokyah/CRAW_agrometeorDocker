#!/bin/bash

myip=$(ip a | grep enp0s31f6$ | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])' | head -1)

#sudo docker run -w /home/rstudio/ --add-host=database:$myip --rm -p 8787:8787 -v /home/tgoossens/:/home/rstudio/ pokyah/agrometeordocker 
sudo docker run -w /home/rstudio/ --rm -p 8787:8787 -v /home/tgoossens/:/home/rstudio/ pokyah/agrometeordocker 



