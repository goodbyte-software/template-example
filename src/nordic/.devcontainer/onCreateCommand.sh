#!/bin/bash

west init -l app
west update
west zephyr-export
# pip3 install -r zephyr/scripts/requirements.txt
# pip3 install -r nrf/scripts/requirements.txt
# pip3 install -r bootloader/mcuboot/scripts/requirements.txt

west completion bash > $HOME/west-completion.bash
echo 'source $HOME/west-completion.bash' >> $HOME/.bashrc
echo 'source /repo/zephyr/zephyr-env.sh' >> $HOME/.bashrc
# echo "parse_git_branch() {" >> $HOME/.bashrc
# echo "  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/^[ *\t]*//' -e 's/^/ (/' -e 's/$/)/'| head" >> $HOME/.bashrc
# echo "}" >> $HOME/.bashrc
# echo 'export PS1="\u@\h \[\033[36m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] # "' >> $HOME/.bashrc
# echo 'export PATH=~/.local/bin:"$PATH"' >> ~/.bashrc