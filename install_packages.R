################################################################################
## Project: Agromet
## Script purpose: install required package for the agrometeor docker container
## Date created : february 2018
## Date last edited : february 2018
# Author: Thomas Goossens - t.goossens@cra.wallonie.be
###############################################################################

# help : https://stackoverflow.com/questions/46902203/verify-r-packages-installed-into-docker-container

# load and install the package manager pacman
if (!require("pacman")) install.packages("pacman")
library(pacman)

# build the list of the required packages from the CSV file
requiredPackages <- read.csv("requiredPackages.csv", quote = "", sep = ",", header=TRUE, stringsAsFactors=FALSE)

# load the required packages
p_load( char=requiredPackages$packageName, character.only=TRUE )

# quit the current session
quit()