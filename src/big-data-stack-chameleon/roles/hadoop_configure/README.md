# ansible-role-hadoop_configure
Ansible role for configuring hadoop

# Installation

```bash
$ git submodule add https://github.com/futuresystems/ansible-role-hadoop_configure.git roles/hadoop_configure
```

# Usage

```yaml
- role: hadoop_configure

  hadoop_cfg_path: /opt/hadoop/etc/hadoop

  clear_configs:
    - core-site.xml
    - hdfs-site.xml
    - yarn-site.xml
    - mapred-site.xml

  core_site:
    fs.defaultFS:
      hdfs://futuresystems

  mapred_site:
    mapreduce.framework.name: yarn
    mapreduce.jobhistory.address:
      "{{ groups['historyserver'][0] }}:10020"

  yarn_site:
    yarn.acl.enable: "true"
    yarn.log-aggregation-enable: "true"

    yarn.resourcemanager.ha.enabled: "true"
    yarn.resourcemanager.cluster-id: "cluster1"
    yarn.resourcemanager.ha.rm-ids: "rm1,rm2"
    yarn.resourcemanager.hostname.rm1:
      "{{ hostvars[groups['resourcemanagers'][0]].ansible_hostname }}"
    yarn.resourcemanager.hostname.rm2:
      "{{ hostvars[groups['resourcemanagers'][1]].ansible_hostname }}"
    yarn.resourcemanager.zk-address:
      "{{ groups['zookeeper'] | join(':2181,') ~ ':2181' }}"

    yarn.nodemanager.aux-services: mapreduce_shuffle
    yarn.nodemanager.aux-services.mapreduce_shuffle.class:
      org.apache.hadoop.mapred.ShuffleHandler

  hdfs_site:
    dfs.namenode.name.dir: file:///hdfs/namenode
    dfs.replication: "{{ dfs_replication }}"
    dfs.permissions.enabled: "true"
    dfs.permissions.superusergroup: hadoop,hadoopadmin
    dfs.namenode.datanode.registration.ip-hostname-check: "false"

    # HA
    dfs.nameservices: futuresystems

    dfs.ha.namenodes.futuresystems: nn1,nn2
    dfs.namenode.rpc-address.futuresystems.nn1:
      "{{ hostvars[groups['namenodes'][0]][hadoop_iface].ipv4.address }}:8020"
    dfs.namenode.rpc-address.futuresystems.nn2:
      "{{ hostvars[groups['namenodes'][1]][hadoop_iface].ipv4.address }}:8020"

    dfs.namenode.http-address.futuresystems.nn1:
      "{{ hostvars[groups['namenodes'][0]][hadoop_iface].ipv4.address }}:50070"
    dfs.namenode.http-address.futuresystems.nn2:
      "{{ hostvars[groups['namenodes'][1]][hadoop_iface].ipv4.address }}:50070"

    dfs.namenode.shared.edits.dir:
      "\
      qjournal://\
      {{ hostvars[groups['journalnodes'][0]][hadoop_iface].ipv4.address }}:8485;\
      {{ hostvars[groups['journalnodes'][1]][hadoop_iface].ipv4.address }}:8485;\
      {{ hostvars[groups['journalnodes'][2]][hadoop_iface].ipv4.address }}:8485\
      /futuresystems\
      "

    dfs.client.failover.proxy.provider.futuresystems:
      "org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider"

    dfs.ha.fencing.methods: sshfence
    dfs.ha.fencing.ssh.private-key-files:
      "{{ ansible_env.HOME }}/.ssh/id_rsa"

    dfs.ha.automatic-failover.enabled: "true"

    # using `hostvars[groups['zookeeper']] does not work
    # as the `zkN` nodes are not visible using that approach
    ha.zookeeper.quorum: "{{ zookeeper_hosts }}"

    # journalnodes
    dfs.journalnode.edits.dir:
      /hdfs/journalnode

    # datanodes
    dfs.datanode.data.dir: file:///hdfs/datanode
```


# Defaults

See `defaults/main.yml`.


# License

See the `LICENSE` file.


# Contributing

Contributions are welcome.

1. Please send pull requests to the `unstable` branch
2. Add yourself to `CONTRIBUTORS.yml`
