# ansible-role-supervisord
Ansible role for Supervisor Process control system

# Installation

```bash
$ git submodule add https://github.com/futuresystems/ansible-role-supervisord.git roles/supervisord
```

# Usage

```yaml
- role: supervisord
  supervisord_programs:
    zookeeper:
      user: zookeeper
      command: /usr/share/zookeeper/bin/zkServer.sh start-foreground
      stdout_logfile: /var/log/zookeeper/stdout.log
      stderr_logfile: /var/log/zookeeper/stderr.log
```


# Defaults

See `defaults/main.yml`.


# License

See the `LICENSE` file.


# Contributing

Contributions are welcome.

1. Please send pull requests to the `unstable` branch
2. Add yourself to `CONTRIBUTORS.yml`
