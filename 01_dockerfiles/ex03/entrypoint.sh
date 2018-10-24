#! /bin/bash

set -o xtrace

gitlab-rake cache:clear 
opt/gitlab/embedded/bin/runsvdir-start &
gitlab-ctl reconfigure
tail -f /dev/null
