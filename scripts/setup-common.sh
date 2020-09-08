#!/bin/bash

repo_dir=""

# git pull
cd ${repo_dir}
git pull

# nginx
cd /etc/nginx
sudo rm /etc/nginx/nginx.conf
sudo ln -s ${repo_dir}/infra-config/nginx/nginx.conf nginx.conf
