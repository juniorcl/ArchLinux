#!/bin/bash
clear

Topic()
{
	    echo -e "\e[1;35m::\e[0m \e[1m$1\e[0m"
}

subTopic()
{
	    echo -e "\e[1;93m >>\e[0m \e[1m$1\e[0m"
}

## Instalation Vim
##################
Topic "Vim"
subTopic "Instaling Vim.."
sudo apt install vim
echo

## Instalation Vscode
####################
Topic "VScode"
subTopic "Instaling VScode.."
sudo snap install --classic code
echo

## Instalation VLC
##################
Topic "VLC"
subTopic "Instaling VLC.."
sudo snap install vlc
echo

## Instalation Pyenv
####################
Topic "Pyenv"
subTopic "Clonando pyenv.."
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo

subTopic "Define environment variable PYENV_ROOT.."
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo

subTopic "Add pyenv init to your shell.."
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc
echo

## Instalation KeePassXC
########################
Topic "KeePassXC"
subTopic "Instaling KeePassXC"
sudo snap install keepassxc
echo

## Instalation Slack
####################
Topic "Slack"
subTopic "Instaling Slack"
sudo snap install slack --classic
echo

## Instalation spotify
######################
Topic "Spotify"
subTopic "Instaling Spotify"
sudo snap spotify
echo

## Instalation R
################
Topic "R"
subTopic "Instaling R.."
sudo apt install r-base
echo

## Instalation qBittorrent
##########################
Topic "qBittorrent"
subTopic "Instaling qBittorrent"
sudo apt install qbittorrent
echo