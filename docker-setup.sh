#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

# unminimize system (restore man pages)
yes | unminimize

# install packages
apt update
apt install -y zsh gdb valgrind clang make git curl vim man-db manpages-dev ca-certificates openssh-client tzdata --no-install-recommends
apt install -y clang-format-15 clang-tidy-15 cmake g++ g++-12 gcc-12 clang-15 zip unzip gcc-multilib manpages-posix --no-install-recommends

# configure timezone
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

# download vim config
curl -o /root/.vimrc https://raw.githubusercontent.com/CIS548/gists/master/example_vimrc.txt

# download oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# change theme to *clean*
sed -i s/^ZSH_THEME=".\+"$/ZSH_THEME=\"clean\"/g ~/.zshrc

# add vscode config
mkdir -p /root/.vscode-server/data/Machine
# cp settings.json /root/.vscode-server/data/Machine/settings.json
