#!/bin/bash

repo_dir=""

cd /etc/nginx/conf.d
sudo rm /etc/nginx/conf.d/app.conf
sudo ln -s ${repo_dir}/infra-config/nginx/conf.d/app-1.conf app.conf
