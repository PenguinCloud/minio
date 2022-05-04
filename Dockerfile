FROM penguintech/core-ansible
LABEL maintainer="Penguinz Tech Group LLC"
LABEL org.opencontainers.image.authors="info@penguintech.group"
COPY . /opt/manager/
WORKSPACE /opt/manager


ENTRYPOINT ["entrypoint.sh"]
