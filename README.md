## Google Chrome running in a Docker container!

Based on work done by [Fábio Rehm](http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/).

## Build the container

    # git clone https://github.com/YarNhoj/docker-chrome.git && cd docker-chrome

Now build the container.

		# docker build -t <Repo>/docker-chrome .

## Running the container

The idea is to bind mount your X11 socket into the container thus allowing it access to your xserver.

    docker run -it --rm -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix <Repo>/docker-chrome

The above runs an ephemeral container. IE your data is gone when the container is gone.
To maintain your data run:

    docker run -it --rm -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/<username>:/home/dev <Repo>/docker-chrome

This will mount your home directory inside the container and thus save your data in ~/.config/google-chrome

Feel free to swap out the --rm directive for -d to run the container in the background or change the username so that it mathes your own before you build the container.
