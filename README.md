### This Dockerfile

- By default everything will be ran as root. We create a new user 'user' and then, after updating repositories and installing Firefox, we execute everything as 'user'
- Generate HASH password with command `mkpasswd -p sha-512 (password)`
- Create a bashrc profile and drop it in the docker build folder

### Running it (Tested on Ubuntu/Debian):

`xhost +`

`docker run -d --name dockerfox dockered_firefox -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix`

### Firefox Hardening:
https://github.com/Argandov/hardening/blob/main/browser/guideline.md

