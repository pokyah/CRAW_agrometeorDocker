# Dockerfile for Agrometeor

built from rocker/tidyverse

## Get it by pulling from Dockerhub

```bash
$ docker pull pokyah/agrometeordocker
```

## Run the container 

You can run it with the `docker-run-agrometeor.sh` bash command available in this repo. Once the command is executed, open your web browser and go at http://localhost:8787. This URL will launch Rstudio. The first time you open it, you will be prompted for a login and password. The container uses the defaults settings of the [rocker/rstudio](https://hub.docker.com/r/rocker/rstudio/) image. Log in with username:password as rstudio:rstudio.

## Extras 

You can launch your docker container using a shortcut command and also make your Rstudio-docker instance behave like a __native app__ 

### Create a shortcut command

#### Make the `docker-run-agrometeor.sh` executable :

```bash
$ chmod a+x docker-run-agrometeor.sh
```

#### Set PATH so it includes user's private ./local/bin folder if it exists

```bash
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
```

#### Make a symbolic link to the original bash script that executes the container

* Create a folder `.local/bin` in your home directory if it does not exists

```bash
$ mkdir `~/.local/bin
```

* make the simlink to the `docker-run-agrometeor.sh` in your `~/.local/bin/` folder that allow to launch it using the simple command `dagrometeor` :

```bash
$ sudo ln -sf /location/of/docker-run-agrometeor.sh ~/.local/bin/dagrometeor
```

Now, from anywhere, if you type `dagrometeor`, the container will be executed

#### Auto-strat the container at boot

you need to execute the `dagrometeor` command [as root user at boot](https://askubuntu.com/questions/956237/run-terminal-sudo-command-at-startup) without typing password. For this, edit `/etc/local.rc` :


```bash
$ cd /etc
$ sudo nano local.rc
```

by pasting `dagrometeor` right before the line `exit0` and by making the `rc.local` file executable : 

`sudo chmod +x /etc/rc.local`


### make Rstudio containerised looks like a native app

If you are using Chromium/Chrome, open http://localhost:8787, click on the 3 stacked dots icon, and choose *More tool > Add to desktop*. Rstudio will be available as a native app that integrates perfectly with your desktop environment (only tested under Gnome).

### first login to rstudio containerised : 

user : `rstudio`
password : `rstudio`




