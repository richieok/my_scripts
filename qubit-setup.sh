#! /usr/bin/bash
cd ~

access_token_param=/qubit-app-v1/access-token
response=$(aws ssm get-parameter --name $access_token_param --region us-east-1 --with-decryption )
access_token_value=$(echo $response | jq -r .Parameter.Value)
#echo $access_token_value

GitFolder=qubit-app-v1
echo `git clone https://$access_token_value@github.com/richieok/$GitFolder.git`

cd $GitFolder
npm i
npm run build
sudo chmod +x server.js
