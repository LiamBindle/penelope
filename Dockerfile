ARG BASE_IMAGE
ARG BASE_IMAGE_TAG
FROM ${BASE_IMAGE}:${BASE_IMAGE_TAG}

MAINTAINER Liam Bindle <liam.bindle@gmail.com>

ARG BASE_IMAGE
COPY ${BASE_IMAGE}/*.sh /
RUN bash /compilers.sh
RUN bash /utilities.sh
ENV MODULEPATH=${MODULEPATH}:/modulefiles \
    SPACK_ROOT=/spack \
    PATH=${SPACK_ROOT}/bin:${PATH}
COPY ${BASE_IMAGE}/etc /etc

RUN bash -c "source /usr/local/Modules/init/bash && . ${SPACK_ROOT}/share/spack/setup-env.sh && spack install -y --no-checksum openmpi@3.0.2 openmpi@3.1.3 mpich@3.0.4 mpich@3.1.4 mpich@3.2.1 mvapich2@2.1 fabrics=mrail mvapich2@2.2 fabrics=mrail mvapich2@2.3 fabrics=mrail"