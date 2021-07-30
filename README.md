# basic go docker

This will help you to run basic go program without any setup problem


# how to do it

You can simply grab this [docker file](Dockerfile) into your project directory

and then you can run build command once

```bash
docker build -t my-go-proj .
```

and then as you want to run the code you can run the following command

```bash
docker run --rm -it --volume $(pwd):/app --name project-container my-go-proj
```

## Pre-requisite

- `docker` must be installed.
