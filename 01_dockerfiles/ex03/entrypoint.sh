#! /bin/bash

set -o xtrace

apt-get install -y git
opt/gitlab/embedded/bin/runsvdir-start &
EXTERNAL_URL="localhost" && gitlab-ctl reconfigure
tail -f /dev/null
