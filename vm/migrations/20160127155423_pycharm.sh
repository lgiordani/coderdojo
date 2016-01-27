#!/bin/bash

exec_dir=$(dirname ${BASH_SOURCE})

sudo -u coderdojo wget "https://download.jetbrains.com/python/pycharm-professional-5.0.3.tar.gz" -O /tmp/pycharm-professional-5.0.3.tar.gz
sudo -u coderdojo tar xvzf /tmp/pycharm-professional-5.0.3.tar.gz -C ~/Devel
