# docker-alpine-webdav
Webdav server running in Alpine Linux container

See docker-compose.yml for options you can use to run this image.

## Image size comparison

1/10th the size of ubuntu + apache2:

donn@p4:~/workspace/github.com/donnlee/docker-alpine-webdav$ d images
REPOSITORY                  TAG                 IMAGE ID            CREATED             SIZE
donn/docker-alpine-webdav   latest              f9e697f9381e        10 minutes ago      22.96 MB


donn@mine:~/workspace/gitlab.com/donnlee/webdav-docker$ d images | grep webdav
donn/webdav-docker        latest              8a535259f48f        2 weeks ago         224.8 MB
