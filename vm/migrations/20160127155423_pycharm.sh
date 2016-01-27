#!/bin/bash

exec_dir=$(dirname ${BASH_SOURCE})

sudo -su coderdojo

wget "https://download.jetbrains.com/python/pycharm-professional-5.0.3.tar.gz" -O /tmp/pycharm-professional-5.0.3.tar.gz
tar xvzf /tmp/pycharm-professional-5.0.3.tar.gz -C /Devel
