## Google Chrome running in a Docker container!

Based on work done by [Fábio Rehm](http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/).

## Running the container

The idea is to bind mount your X11 socket into the container thus allowing it access to your xserver.

    docker run -it --rm -e DISPlAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11.unix

