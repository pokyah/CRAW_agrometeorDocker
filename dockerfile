# We build our custom image from the existing rocker/tidyverse image which is an R install within an UBUNTU Linux.
FROM rocker/tidyverse:latest

# provide information about the maintainer of the image
MAINTAINER Thomas Goossens (t.goossens@cra.wallonie.be)

# We need to install all the UBUNTU dependencies required for our R-packages to work properly
RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    libgeos-dev \
    libcairo2-dev \
    libudunits2-dev \
    gdal-bin \
    libgdal-dev \
    libproj-dev \
    freeglut3 \
    freeglut3-dev \
    mesa-common-dev \
    && apt-get clean \ 
    && rm -rf /var/lib/apt/lists/ \ 
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
    && install2.r --error \
      lubridate \ 
      anytime \
      jsonlite \
      here \
      nortest \
      lazyeval \
      maptools \
      rmarkdown \
      knitr \
      maps \
      broom \
      stringr \
      RPostgreSQL \
      chron \
      readr \
      plotly \
      ggpubr \
      BlandAltmanLeh \
   && rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
   && rm -rf /var/lib/apt/lists/*

 



