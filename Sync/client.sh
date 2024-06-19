#!/bin/bash

# generate ssh shit
ssh-keygen

# send over public ssh rsa id
ssh-copy-id -i ~/.ssh/id_rsa.pub nishant@172.17.0.2

# run this command after the above two are ran in server
rsync -chavzP nishant@172.17.0.2:/home/nishant/data .

# this will shove it into a cron job thing
echo "* * * * * nishant rsync -chavzP nishant@172.17.0.2:/home/nishant/data ." >> /etc/cron.d/dataSync
service cron reload

# spit to S3
# install AWS cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# aws cli to upload sht