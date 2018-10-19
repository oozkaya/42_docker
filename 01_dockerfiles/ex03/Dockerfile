FROM ubuntu
RUN apt-get -qq update -y && apt-get -qq upgrade -y && apt-get -qq install -y curl openssh-server ca-certificates && \
    curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash && \
    apt-get install gitlab-ce

#EXTERNAL_URL="https://about.gitlab.com/"

EXPOSE 80 443 22
# Cf. gitlab architecture
# HTTP: TCP 80
# HTTPS: TCP 443
# SSH: TCP 22

# CMD ["gitlab-ctl", "start", ";", "gitlab-ctl", "reconfigure"]
# CMD ["/opt/gitlab/embedded/bin/runsvdir-start", "&&", "gitlab-ctl", "reconfigure"]
CMD /opt/gitlab/embedded/bin/runsvdir-start && gitlab-ctl reconfigure

#CMD ["systemctl", "restart", "gitlab-runsvdir"]
#CMD ["gitlab-ctl", "reconfigure"]