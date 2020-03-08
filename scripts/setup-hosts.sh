#!/bin/bash

set -euo pipefail

cat <<EOF | sudo tee -a /etc/hosts
# KTHW Vagrant machines
10.240.0.10 master
10.240.0.20 worker-0
10.240.0.21 worker-1
EOF
