## Google Chrome running in a Docker container!

Based on work done by [Fábio Rehm](http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/).

## Build the container

    # git clone https://github.com/YarNhoj/docker-chrome.git && cd docker-chrome
		# docker build -t <Repo>/chrome .
or
    # docker pull yarnhoj/chrome


## Running the container

The idea is to bind mount your X11 socket into the container thus allowing it access to your xserver.

    docker run -it --rm -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix <Repo>/chrome

