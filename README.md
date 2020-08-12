# Dotfiles

## Install
```
$ make
```

## Docker

```
$ docker build --pull --rm -f "Dockerfile" -t dotfiles "."
$ docker run --rm -it  dotfiles:latest
```