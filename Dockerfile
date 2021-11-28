FROM ubuntu:latest

# By default everything will be ran as root. We create a new user 'user' and then execute everything as 'user'

# Generate HASH password with command -> mkpasswd -p sha-512 <password>
RUN usermod -p {HASH} root && \
	apt-get update && apt-get install firefox -y \
	mkdir /home/user/ && \
	groupadd -r user && \ 
	useradd -r -g user user

USER user

# Optional: create a custom bashrc and put it into this same folder
COPY bashrc /home/user/.bashrc

CMD ['source','/home/user/.bashrc']
# Open FF profiles
CMD /usr/bin/firefox -p

# To run it (Tested on Ubuntu):
# xhost +
# docker run -d --name dockerfox dockered_firefox -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix
