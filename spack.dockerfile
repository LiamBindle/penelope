ARG BASE_IMAGE_TAG
FROM liambindle/penelope:${BASE_IMAGE_TAG}

# Install MPIs
ARG SPACK_SPEC
RUN bash -c "spack install -y --no-checksum ${SPACK_SPEC}"