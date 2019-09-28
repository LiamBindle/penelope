ARG BASE_IMAGE
ARG BASE_IMAGE_TAG
ARG PENELOPE_VERSION
FROM liambindle/penelope:${PENELOPE_VERSION}-${BASE_IMAGE}${BASE_IMAGE_TAG}

# Install MPIs
ARG SPACK_SPEC
RUN bash -c "spack install -y --no-checksum ${SPACK_SPEC}"
# RUN bash -c "spack install -y --no-checksum openmpi@3.0.4"
# RUN bash -c "spack install -y --no-checksum openmpi@3.1.4"
# RUN bash -c "spack install -y --no-checksum openmpi@4.0.1"

# RUN bash -c "spack install -y --no-checksum mpich@3.0.4"
# RUN bash -c "spack install -y --no-checksum mpich@3.1.4"
# RUN bash -c "spack install -y --no-checksum mpich@3.2.1"
# RUN bash -c "spack install -y --no-checksum mpich@3.3.1"

# RUN bash -c "spack install -y --no-checksum mvapich2@2.0   fabrics=mrail"
# RUN bash -c "spack install -y --no-checksum mvapich2@2.1   fabrics=mrail"
# RUN bash -c "spack install -y --no-checksum mvapich2@2.2   fabrics=mrail"
# RUN bash -c "spack install -y --no-checksum mvapich2@2.3.1 fabrics=mrail"

# RUN bash -c "spack install -y --no-checksum intel-mpi@2019.4.243"
# RUN bash -c "spack install -y --no-checksum intel-mpi@2018.4.274"
# RUN bash -c "spack install -y --no-checksum intel-mpi@2017.4.239"