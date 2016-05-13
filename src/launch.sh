#nova delete $USER-master0 $USER-master1 $USER-master2
#sleep 60s
mypwd=$(pwd)
cd "big-data-stack-chameleon/"
vcl boot -p openstack -P $USER-
sleep 200s
ansible-playbook play-hadoop.yml
ansible-playbook addons/pig.yml
cd ${mypwd}
rm -rf "big-data-stack-chameleon/examples/src"
mkdir "big-data-stack-chameleon/examples/src"
/bin/bash -c "cp -avr pig.benchmarking.i590/src/* big-data-stack-chameleon/examples/src/"
cd "big-data-stack-chameleon/"
ls -al
ansible-playbook examples/src/site.yml
nova list | grep $USER-cc-
