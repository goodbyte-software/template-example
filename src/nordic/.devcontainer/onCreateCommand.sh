#!/bin/bash

#Downloading SDK from west manifest files. 
west init -l app
set -euo pipefail

west update
west zephyr-export
pip3 install -r deps/zephyr/scripts/requirements.txt

west completion bash > $HOME/west-completion.bash

#Downloading Nrfutil packets 
nrfutil self-upgrade

nrfutil install device 
nrfutil install completion
nrfutil install trace

echo 'source $HOME/west-completion.bash' >> $HOME/.bashrc
echo 'source /repo/deps/zephyr/zephyr-env.sh' >> $HOME/.bashrc