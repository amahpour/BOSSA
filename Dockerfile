# Pull Debian image
FROM debian:latest

# Install packages
RUN apt-get update
RUN apt-get install -y python3 \
			python3-pip \
			python3-rpi.gpio \
			git \
			libwxgtk3.0-dev \
			libreadline-dev

# Install Python packages
RUN pip3 install pyserial

# Clone BOSSA project, install, and verify
RUN git clone https://github.com/shumatech/BOSSA.git
WORKDIR BOSSA 
RUN make install
