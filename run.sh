xhost +
docker run --privileged -it \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix" \
  --device=/dev/dri:/dev/dri \
  --env="DISPLAY=$DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  -h openquad.local \
  --name="OpenQuad" \
  openquad/openquadimage
