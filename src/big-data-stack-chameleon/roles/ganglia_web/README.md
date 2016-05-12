# Description

This deploys the apache web interface to Ganglia

# Platforms supported

- Ubuntu 14.04

# Variables

None

# Example

The following deploys the web interface to the `monitor-01` node:

```yaml
- name: ganglia monitor
  hosts: monitor-01
  sudo: yes
  roles:
  - role: ganglia_web
```

You can then access the interface by going to `monitor-01/ganglia`
