FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
        wget \
        # coot dependencies
        libpng16-16 \
        libgnomecanvas2-dev \
        libgl1-mesa-glx:amd64 \
        libglu1-mesa:amd64 \
        libxmu6:amd64 \
        libssl1.0.0:amd64 && \
    # download coot
    yes | wget https://www2.mrc-lmb.cam.ac.uk/personal/pemsley/coot/binaries/release/coot-0.8.9.2-binary-Linux-x86_64-ubuntu-17.10-python-gtk2.tar.gz && \
    # untar coot
    tar -xf coot-0.8.9.2-binary-Linux-x86_64-ubuntu-17.10-python-gtk2.tar.gz -C /usr/local/src/ && \
    # rename coot folder to coot
    mv /usr/local/src/coot* /usr/local/src/coot && \
    # remove download release file
    rm coot-0.8.9.2-binary-Linux-x86_64-ubuntu-17.10-python-gtk2.tar.gz

CMD bash /usr/local/src/coot/bin/coot
