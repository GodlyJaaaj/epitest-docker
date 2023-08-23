
## Installation

Dependencies:

Install it on your own :) !
```bash
    docker
```

Git clone:

```bash
    mkdir ~/App
    cd ~/App
    git clone git@github.com:GodlyJaaaj/epitest-docker.git
    cd epitest-docker
    chmod +x epitest.sh
```

*epitest.sh* will build the base image. Do not delete this local docker image or you'll have to rebuild it.
Also do not move epitest.sh away from the Dockerfile (they must be in the same directory).

## Usage/Examples

Let's imagine a file structure like this, located in ```/home/my_name/dev/my_project```:
```
    ~/dev/my_project> tree -a

    ./my_project/
    │
    ├── src/
    │   ├── main.c
    │   ├── op.c
    │   └── epitech.c
    │
    ├── include/
    │   ├── my_project.h
    │   ├── op.h
    │   └── epitech.h
    ├── Makefile
    └──.gitignore
```

Imagine we have an alias ```epitest=~/App/epitest-docker/epitest.sh``` then just run it at the **root of your project**:

```bash
    epitest
```

A fedora 38 container will boot and then, you can compile your project inside of your container.
The container doesn't have a persistent volume and use a **copy** of your project.

**CTRL + D** to leave container or:
```bash
    exit
```
