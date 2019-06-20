FROM fedora:30
LABEL maintainer="Strongbrent"

# Install Dependencies
RUN dnf -y upgrade --refresh && dnf clean all

RUN dnf makecache \
  && dnf -y install \
    sudo \
    curl \
    wget \
    which \
  && dnf clean all

# Create test user and add to sudoers
RUN useradd -m -s /bin/bash testuser
RUN usermod -aG wheel testuser
RUN echo "testuser   ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers

# Switch to testuser
USER testuser
ENV HOME /home/testuser

# Change working directory
WORKDIR /home/testuser

CMD ["/bin/bash"]
