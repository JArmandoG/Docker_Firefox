# Docker sandboxed Firefox Browser

Special docker image that runs Firefox, and binds its GUI via X11 in Linux Hosts

### This Dockerfile

- By default everything will be ran as root. We create a new user 'user' and then, after updating repositories and installing Firefox, we execute everything as 'user'
- Generate HASH password with command `mkpasswd -p sha-512 (password)`
- Create a bashrc profile and drop it in the docker build folder

### Run it (Tested on Ubuntu/Debian):

`git clone https://github.com/JArmandoG/Docker_Firefox.git`

`mv Docker_Firefox/example_bashrc Docker_Firefox/bashrc`

`xhost +`

`docker run -d --name dockerfox Docker_Firefox -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix`

### Firefox Hardening quick reference guide:
https://github.com/JArmandoG/Firefox-Hardening

