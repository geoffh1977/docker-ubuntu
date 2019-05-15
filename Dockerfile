# Builds Alpine Filesystem
FROM ubuntu:bionic AS build
LABEL maintainer="geoffh1977 <geoffh1977@gmail.com>"

ENV UBUNTU_USER=user \
    UBUNTU_UID=1000 \
    UBUNTU_GID=1000 \
    UBUNTU_VERSION=bionic

RUN addgroup --gid=${UBUNTU_GID} ${UBUNTU_USER} &&  \
    adduser --disabled-password --uid=${UBUNTU_UID} --gid=${UBUNTU_GID} --gecos "Ubuntu User" --home "/home/${UBUNTU_USER}" --shell "/bin/bash" ${UBUNTU_USER}

USER ${UBUNTU_USER}
WORKDIR /home/user
CMD ["/bin/bash"]
