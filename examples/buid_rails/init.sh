#!/bin/bash

export SECRET_KEY_BASE=`bundle exec rake secret`
cd /root/rails/dengonban
rails s -e production -p 80 -d

cat <<EOF >>~/.bashrc
trap 'pkill -TERM ruby-mri; sleep 3; exit 0'
TERM
EOF
exec /bin/bash
