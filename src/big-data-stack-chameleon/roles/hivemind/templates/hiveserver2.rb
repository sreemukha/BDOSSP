Eye.application 'hiveserver2-{{ env_name }}' do
  working_dir '/etc/eye'
  stdall '/var/log/eye/hiveserver2-{{ env_name }}-stdall.log' # stdout,err logs for processes by default
  trigger :flapping, times: 10, within: 1.minute, retry_in: 3.minutes
  check :cpu, every: 10.seconds, below: 100, times: 3 # global check for all processes
  env 'HADOOP_HOME' => '/opt/hadoop-test1/'
  env 'HADOOP_USER_CLASSPATH_FIRST' => 'true'
  env 'TEZ_CONF_DIR' => '/opt/hadoop-test1/conf'
  env 'HADOOP_CLASSPATH' => '/opt/hadoop-test1/conf:/opt/tez/tez-jars/*:/opt/tez/tez-jars/lib/*'

  process :hiveserver2_{{ env_name }} do
    pid_file '{{ hadoop_var_prefix }}/hiveserver2.pid'
    start_command 'sudo -E -u {{ hadoop_user }} 
/opt/hive-llap/packaging/target/apache-hive-2.0.0-SNAPSHOT-bin/apache-hive-2.0.0-SNAPSHOT-bin/bin/hiveserver2'

    daemonize true
    start_timeout 10.seconds
    stop_timeout 5.seconds

  end

end
