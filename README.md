# Installing docker
These instructions have been taken from [link](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)
These steps are for ubuntu 18.04 if you have any other version this might not work.
```bash
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install docker-ce
docker version
```
Docker version command should not give any error. The next set of commands will add docker to super user group so that we dont have to use sudo everytime.
```bash
sudo usermod -aG docker ${USER}
su - ${USER}
```

# Downloading image
```docker
docker pull openquad/openquadimage:latest
```
Once done do `docker images` and that image should be listed.

# Creating a container
Download the `run.sh` file and make it executable using
```bash
chmod a+x run.sh
# assuming you are in the same directory where you downloaded run.sh
```
Starting the container
```bash
./run.sh
```
Once the container starts you will see that your username changes to `root@openquad`. Exit the container using `exit`.
The container has now been created and we can use it. If you want to create another container follow the same steps but make sure you change the container name in `run.sh` which is listed as `--name="OpenQuad"`. Here `OpenQuad` is the container name.

# Starting and Stopping a container
To see all the containers do 
```docker
docker ps -a
```
To start the container do
```docker
docker start OpenQuad
```
To stop the container do
```docker
docker stop OpenQuad
```
It is always a good practice to stop the container after you are done using it.

# Entering the containers
Once you have started the container do 
```docker
docker exec -it OpenQuad tmux
```
And you will be inside the container.
To exit from the container do `exit`.

# Performing some simulation
Once you have entered the container split the window in tmux and type `sim`. Wait for some time for simualtion to start. Initially it takes a bit longer. If it doesn't start do a CTRL + C and type `sim` again.
Once gazebo is set and you can see the drone. In the other split tmux type `vel`. You will see the pygame icon on the left side click on it and control the drone.

# Tutorials
Since we will be using tmux as our terminal and docker it is better to go through some tutorials.
### Docker 
- [Link 1](https://www.youtube.com/watch?v=tmyFd1PD-Gs)
- [Link 2](https://www.youtube.com/watch?v=zJ6WbK9zFpI)

### Tmux
- [Link 1](https://www.youtube.com/watch?v=Yl7NFenTgIo)

# Installing on native machine
If you want to install the setup on your native machine then follow the steps given in this [link](https://arksn21.gitbook.io/openquad-documentation/).
You might face a lot of problems installing it from scratch.

# To be done
- [x] Intel hardware acceleration
- [ ] Nvidia hardware acceleration using docker
