Shellinabox for DomeOS
===

Shellinabox implements a web server that can export arbitrary command line tools to a web based terminal emulator. This is a modified version for DomeOS, providing quick access to docker container via web terminal by simply specifying intended host address and container ID.

## Instructions

Dockerfile_compile is designed to compile and get executable file "shellinaboxd", Dockerfile is designed to create shellinabox server image.

## Running in a container

It's recommended that the program run in a docker container:

```bash
sudo docker run -d --restart=always -p 4200:4200 --name shellinabox pub.domeos.org/domeos/shellinabox:1.1
```

## Usage

Health check can be done through url: http://localhost:4200/domeos/health

Remote hosts can be accessed through urls like: http://localhost:4200/domeos@\<host address\>@/

Remote containers can be accessed through urls like: http://localhost:4200/domeos@\<host address\>@\<container ID\>@/

Here are some examples:

http://localhost:4200/domeos@10.11.150.71@/
http://localhost:4200/domeos@10.11.150.71@e5e7d49bbd28@/

Note that for container-accessing, dockerConnector must be installed on hosts appointed container is running on, while host-accessing needn't.
