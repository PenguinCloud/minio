FROM penguintech/core-ansible
LABEL maintainer="Penguinz Tech Group LLC"
LABEL org.opencontainers.image.authors="info@penguintech.group"
COPY . /opt/manager/
WORKDIR /opt/manager
RUN apt update && apt dist-upgrade -y && apt auto-remove -y && apt clean -y
# PUT YER ARGS in here
RUN ansible-playbook upstart.yml --tags build -c local
# PUT YER ENVS in here
RUN ansible-playbook upstart.yml --tags run -c local
ENTRYPOINT ["entrypoint.sh"]
