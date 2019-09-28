ARG BASE_IMAGE
ARG BASE_IMAGE_TAG
FROM ${BASE_IMAGE}:${BASE_IMAGE_TAG}

MAINTAINER Liam Bindle <liam.bindle@gmail.com>

WORKDIR /

# Install compilers
ARG BASE_IMAGE
COPY ${BASE_IMAGE}/compilers.sh /
RUN bash /compilers.sh

# Install utilities
COPY ${BASE_IMAGE} /
RUN bash /utilities.sh

# Install spack
WORKDIR /
ENV MODULEPATH=${MODULEPATH}:/modulefiles
ENV SPACK_ROOT=/spack
RUN git clone https://github.com/spack/spack.git \
&&  cd spack \
&&  git checkout v0.12.1 \
&&  echo ". ${SPACK_ROOT}/share/spack/setup-env.sh" >> /init.rc
ENV BASH_ENV /init.rc

RUN bash -c "spack bootstrap"