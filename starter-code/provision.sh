#!/bin/bash
# run updates
sudo apt-get update -y
# run upgrades
sudo apt-get upgrade -y
# install nginx
sudo apt-get install nginx -y
# start nginx
sudo systemctl start nginx
# enable nginx
sudo systemctl enable nginx
# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y
# sed = stream editor
# Delete lines that contain the specified character '#'
sed -i '/#/d' /etc/nginx/sites-available/default
# replace text that contain the specified pattern
# -i to save the changes 's/text/replace/' file
# sed 's/text/replace/' /etc/nginx/sites-available/default 
sed -i "s|location / {|location / {proxy_pass http://localhost:3000; proxy_http_version 1.1; proxy_set_header Upgrade \$http_upgrade; proxy_set_header Connection 'upgrade'; proxy_set_header Host \$host; proxy_cache_bypass \$http_upgrade; } location /fibonacci/:n {proxy_pass http://localhost:3000/fibonacci; proxy_http_version 1.1; proxy_set_header Upgrade \$http_upgrade; proxy_set_header Connection 'upgrade'; proxy_set_header Host \$host; proxy_cache_bypass \$http_upgrade; |" /etc/nginx/sites-available/default
# restart nginx
sudo systemctl restart nginx
# install npm
cd app/app
sudo npm install
# install pm2 globally
sudo npm install -g pm2
# start npm
sudo npm start

