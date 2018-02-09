FROM ubuntu:16.04

ARG branch=master
ARG version

ENV name="bio-class"
ENV install_dir="/opt/${name}"

LABEL application=${name} \
      description="BIO class generic image" \
      maintainer="kimle@cesnet.cz" \
      version=${version}

SHELL ["/bin/bash", "-c"]

RUN mkdir -p ${install_dir}

COPY bin ${install_dir}/bin/
COPY install ${install_dir}/install/
COPY conf ${install_dir}/conf/
COPY common ${install_dir}/common/

RUN ${install_dir}/install/main.sh

EXPOSE 22

ENTRYPOINT /opt/bio-class/bin/wrapper.sh
