#! /usr/bin/bash
cd ~
curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo yum install -y nodejs
sudo npm i -g npm@latest
