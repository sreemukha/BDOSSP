# ansible-role-spark
Ansible role for Apache Spark

# Installation

```bash
$ git submodule add https://github.com/futuresystems/ansible-role-spark.git roles/spark
```

# Usage

```yaml
- role: spark
  spark_version: 1.5.1
  spark_package_type: src
  spark_build_hadoop_profile: hadoop-2.6
  spark_build_hadoop_version: 2.7.1
  spark_build_skip_tests: yes
```


# Defaults

See `defaults/main.yml`.


# License

See the `LICENSE` file.


# Contributing

Contributions are welcome.

1. Please send pull requests to the `unstable` branch
2. Add yourself to `CONTRIBUTORS.yml`
