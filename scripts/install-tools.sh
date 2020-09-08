#!/bin/bash

set -e

dir=`dirname $0`

# install alp
# requires: wget, unzip
(
    cd ${dir}/tmp
    wget https://github.com/tkuchiki/alp/releases/download/v1.0.3/alp_linux_amd64.zip
    unzip alp_linux_amd64.zip
    sudo mv alp /usr/local/bin/alp
    sudo chown root:root /usr/local/bin/alp
)


# install myprofiler
# requires: wget, tar
(
    cd ${dir}/tmp
    wget https://github.com/KLab/myprofiler/releases/download/0.2/myprofiler.linux_amd64.tar.gz
    tar xf myprofiler.linux_amd64.tar.gz
    sudo mv myprofiler /usr/local/bin/
)
