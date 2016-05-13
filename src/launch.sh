mypwd=$(pwd)
cd "./../../big-data-stack/"
vcl boot -p openstack -P $USER-
sleep 200s
ansible-playbook play-hadoop.yml
ansible-playbook addons/pig.yml
cd ${mypwd}
rm -rf "../../big-data-stack/examples/src"
mkdir  "../../big-data-stack/examples/src"
/bin/bash -c "cp -avr pig.benchmarking.i590/src/* ../../big-data-stack/examples/src/"
cd "./../../big-data-stack/"
ansible-playbook examples/src/site.yml
nova list | grep $USER-
cd ${mypwd}
