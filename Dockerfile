FROM jenkins
USER root
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN curl -fsSL https://get.docker.com/gpg | apt-key add -
RUN curl -fsSL https://get.docker.com/ | sh
RUN usermod -aG docker jenkins
USER jenkins
