#! /usr/bin/bash
cd ~

GitFolder=yangatrips-v
echo `git clone https://github.com/richieok/${GitFolder}.git`

cd $GitFolder
npm i
npm run build
sudo chmod +x server.js
