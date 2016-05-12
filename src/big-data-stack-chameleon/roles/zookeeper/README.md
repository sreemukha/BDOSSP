# ansible-role-zookeeper
Ansible role for Zookeper

# Installation

```bash
$ git submodule add https://github.com/futuresystems/ansible-role-zookeeper.git roles/zookeeper
```

# Usage

```yaml
- role: zookeeper
  zookeeper_node_iface: ansible_eth0
  zookeeper_nodes: "{{ groups['zookeeper'] }}"
```

Make sure to all specify a monotonically increasing integer for
`zookeeper_id` in `host_vars/<node name>` for each node (in order) in
`groups['zookeeper']`.


# Defaults

See `defaults/main.yml`.


# License

See the `LICENSE` file.


# Contributing

Contributions are welcome.

1. Please send pull requests to the `unstable` branch
2. Add yourself to `CONTRIBUTORS.yml`
