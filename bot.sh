

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get -qq -y install nodejs

git clone https://github.com/botgram/shell-bot --depth 1 shell-bot

cd shell-bot
cat << EOF > config.json
{
  "authToken": "${AUTH}",
  "owner": ${OWNER}
}
EOF
npm install

node server
