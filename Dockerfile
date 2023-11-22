# Use Ubuntu 20.04 as boot image
FROM ubuntu:20.04

# Install Shellinabox
RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set root password
RUN echo 'root:rfy' | chpasswd

# Expose port 22
EXPOSE 22

# Start Shellinabox
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
