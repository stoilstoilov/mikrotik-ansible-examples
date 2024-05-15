# Use an official Python runtime as a parent image
FROM python:latest

# Set environment variables
ENV ANSIBLE_VERSION=9.2.0

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libssh-dev \ 
    ssh \
    rsync \
    git \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Ansible
RUN pip install --upgrade pip && \
    pip install ansible==${ANSIBLE_VERSION}

RUN   pip install ansible-pylibssh

# Install Ansible community.network collection
RUN ansible-galaxy collection install community.network

# Copy your Ansible project into the container
# You can adjust the source path as per your Ansible project location
COPY . /ansible

# Set working directory
WORKDIR /ansible

# Default command: display Ansible version
CMD ["ansible", "--version"]
