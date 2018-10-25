FROM ubuntu
RUN apt-get -qq update -y && apt-get -qq upgrade -y && apt-get -qq install -y curl openssh-server ca-certificates postfix ufw tzdata \
    && curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash \
    && apt-get install -y gitlab-ce \
    && apt-get autoremove \
    && apt-get clean 

EXPOSE 80 443 22
# Cf. gitlab architecture
# HTTP: TCP 80
# HTTPS: TCP 443
# SSH: TCP 22

COPY entrypoint.sh /root
ENTRYPOINT ["sh", "/root/entrypoint.sh"]

#docker build -t gitlab42 .
#docker run --name gitlabtest -p 8022:22 -p 8443:443 -p 8080:80 -d gitlab42
#docker logs -f gitlabtest