#! /bin/bash

#build image
#check if the image already exists

if [[ "$(docker images -q epitest_base:latest 2> /dev/null)" == "" ]]; then
  echo "Building image"
  docker build . --target build -t epitest_base:latest
else
  echo "Image already exists"
  docker build . --target copy --cache-from epitest_base:latest -t epitest:latest
fi

#remove dangling image (AKA caches)
if [[ "$(docker images -f "dangling=true" -q)" != "" ]]; then
  echo "Removing dangling images"
  docker rmi "$(docker images -f "dangling=true" -q)"
fi

#start the container
docker run --rm -it epitest:latest
