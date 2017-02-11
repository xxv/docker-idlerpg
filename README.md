IdleRPG
=======

Build the container:

    docker build -t idlerpg .
    docker run -v /opt/docker/idlerpg:/idlerpg --user root idlerpg chown idlerpg:idlerpg -R .

Load the initial files:

    cp conf/* /opt/docker/idlerpg

Run the first-time initialization database creation:

    docker run -it -v /opt/docker/idlerpg:/idlerpg idlerpg

Daemonize

    docker run -d -v /opt/docker/idlerpg:/idlerpg idlerpg
