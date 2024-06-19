#!/bin/bash
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

useradd -m -s /bin/bash nishant
echo "nishant:nishant" | chpasswd

cd /home/nishant

mkdir data

cd ./data

mkdir folder{01..20}

for i in {01..20}
do
    cd folder${i}
    for x in {01..20}
    do
        touch meow${x}.txt
    done
    cd /home/nishant/data/
done


service ssh start

# 172.17.0.2
# /home/nishant/data
