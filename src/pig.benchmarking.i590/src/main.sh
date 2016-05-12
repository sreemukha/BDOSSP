cd ~
hdfs dfs -rm -r /user/hadoop/*
pig load.pig
echo "Load with Default Parallelism"
pig load_r5.pig
echo "Load with parallelism 5"
pig aggregate.pig
echo "Aggregate with Default parallelism"
pig aggregate_r5.pig
echo "Aggregate script with parallelism 5"
pig join.pig
echo "Join with Default parallelism"
pig join_r5.pig
echo "Join script with parallelism 5"
pig filter.pig
echo "Filter with Default parallelism"
pig filter_r5.pig
echo "Filter script with parallelism 5"
