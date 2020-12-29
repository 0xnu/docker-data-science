FROM jupyter/scipy-notebook

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Finbarrs Oketunji <oketunjifinbarrs@hotmail.com>" \
    architecture="linux/amd64" \
    scipy-notebook-version="latest" \
    build="12-29-2020" \
    org.opencontainers.image.title="Docker Data Science" \
    org.opencontainers.image.description="Docker image for Data Science projects." \
    org.opencontainers.image.authors="Finbarrs Oketunji <oketunjifinbarrs@hotmail.com>" \
    org.opencontainers.image.vendor="Cloudeya Limited" \
    org.opencontainers.image.version="v0.0.1" \
    org.opencontainers.image.url="https://hub.docker.com/r/0xnu20/docker-data-science/" \
    org.opencontainers.image.source="https://github.com/0xnu/docker-data-science" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE

# Prevent Python from outputting issues in docker containers.
ENV PYTHONUNBUFFERED=1

USER root

# bash instead of dash to use source
RUN ln -snf /bin/bash /bin/sh

USER jovyan

RUN pip install --upgrade flask
RUN pip install --upgrade keras
RUN pip install --upgrade altair
RUN pip install --upgrade requests
RUN pip install --upgrade tensorflow
RUN pip install --upgrade pandas-datareader