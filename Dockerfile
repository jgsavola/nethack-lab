# Use the latest stable Debian image as a base
FROM debian:stable-slim

# Set the maintainer label
LABEL maintainer="youremail@example.com"

# Install necessary packages including NetHack and any required dependencies
RUN apt-get update && \
    apt-get install -y \
    nethack-console \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user 'nethackuser' and set home directory
RUN useradd -ms /bin/bash nethackuser

# Set the working directory for the container
WORKDIR /home/nethackuser

# Change ownership of the home directory to the non-root user
RUN chown -R nethackuser:nethackuser /home/nethackuser

# Switch to the non-root user
USER nethackuser

# Set the default command to run NetHack
CMD ["bash"]
