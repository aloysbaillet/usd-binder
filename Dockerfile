FROM dockerusd/usd-jupyter:20.08-centos7

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER=${NB_USER} \
    NB_UID=${NB_UID} \
    HOME=/home/${NB_USER}

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

ADD https://developer.apple.com/augmented-reality/quick-look/models/retrotv/tv_retro.usdz ${HOME}

ENTRYPOINT []
