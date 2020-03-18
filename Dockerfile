# Pull Debian image
FROM debian:latest

# Install packages
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
		python3 \
		python3-setuptools \
		python3-pip \
		git \
		libwxgtk3.0-dev \
		libreadline-dev \
		build-essential

# Install Python packages
RUN pip3 install pyserial

# Clone BOSSA project, install, and verify
RUN git clone https://github.com/shumatech/BOSSA.git
WORKDIR BOSSA
RUN make install