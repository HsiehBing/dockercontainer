A simple container with Flask, nginx and gunicorn with expose on port 80.

### build docker
```
docker build -t {imageName}:{version} .
```
ex. 
docker build -t test:1 .
### run docker
```
docker run -d --name test1 -p 80:80 test:1
```
### check in the container
```
docker exec -it test1 bash
```

### shutdown container
```
docker kill test1
```

### remove container
```
docker rm test1
```

### remove docker images
```
docker rmi -f test1
```

