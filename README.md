### build the image
```
sudo docker build -t coot-in-docker .
```

### run coot
```
sudo docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" coot-in-docker
```
