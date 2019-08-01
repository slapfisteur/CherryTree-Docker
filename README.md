# CherryTree-Docker
CherryTree docker who can be used on Debian Buster

`docker build . -t cherrytree`

`xhost local:<user>`

Replace -v /PATH/HOST:/PATH/CONTAINER with your folders to have a share between host and container

`docker run -ti --env DISPLAY=$DISPLAY --network=host -v /PATH/HOST:/PATH/CONTAINER --name cherrytree --volume /tmp/.X11-unix/:/tmp/.X11-unix/ cherrytree`

You can create following alias to delete container after exiting.

`alias cherrytree='docker run -ti --env DISPLAY=$DISPLAY --network=host -v /PATH/HOST:/PATH/CONTAINER --name CT --volume /tmp/.X11-unix/:/tmp/.X11-unix/ cherrytree && docker rm $(docker ps -qa --no-trunc --filter "status=exited")'`
