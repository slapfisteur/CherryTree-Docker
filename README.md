# CherryTree-Docker
CherryTree docker who can be used for Debian Buster

`docker build . -t cherrytree`

`xhost local:<user>`

`docker run -ti --env DISPLAY=$DISPLAY --network=host --name cherrytree --privileged --volume /tmp/.X11-unix/:/tmp/.X11-unix/ cherrytree`

