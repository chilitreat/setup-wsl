#!/bin/bash

# ansibleのインストール
sudo apt update -y
sudo apt upgrade -y

sudo apt-get update -y
sudo apt-get install -y software-properties-common
sudo apt-add-repository --y ppa:ansible/ansible
sudo apt-get update -y
sudo apt-get install -y ansible

ssh-keygen
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# ローカルのhostsファイルでシンボリックリンクを貼る
sudo mv /etc/ansible/hosts /etc/ansible/hosts.bk
sudo ln -s ./hosts /etc/ansible/hosts

# see: https://galaxy.ansible.com/andrewrothstein/terraform
ansible-galaxy install  andrewrothstein.terraform
# see: https://galaxy.ansible.com/christiangda/awscli
ansible-galaxy install christiangda.awscli