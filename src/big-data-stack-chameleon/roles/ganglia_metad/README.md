# Description

This role deploys the Ganglia `metad` daemon.

# Platforms supported

- Ubuntu 14.04

# Variables

See [defaults/main.yml](https://github.com/futuresystems/ansible-role-ganglia-metad/blob/master/defaults/main.yml)

# Example

The following deploys `metad` to the first `monitor` node:

```yaml
- name: ganglia monitor
  hosts: monitor[0]
  sudo: yes
  roles:
    - role: ganglia_metad
```

