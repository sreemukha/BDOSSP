Project Proposal
===============================================================================

OLAP Analytical Query Benchmarking on Yelp Dataset (HiBench)
-------------------------------------------------------------------------------

Online Analytical Processing is a processing technique that enables a user to view the data in multiple dimensions. It can easily intersect different dimensions of data providing easy extraction for further data analysis.

Our project is to perform OLAP Query Benchmarking using Hive (Join and Aggregation) on Yelp Dataset on different Hadoop cluster configurations, node sizes, and virtual instance flavors. Our goal is to find a configuration, node size, and virtual instance flavor for which the clusters created will have the maximum performance. 

Team
-------------------------------------------------------------------------------
  * Sreemukha Taduru, staduru, staduru, staduru (Lead)
  * Sravya Panganamamula, vpangana, vpangana, sravyasai
  * Harish Reddy Nallagangireddygari, hnallaga, hnallaga, harish

Role
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Creation of Instances - Sravya
* Setting up Environment - Harish
* Cluster Creation - Sreemukha
* Benchmarking on different Configurations - Sravya, Sreemukha, Harish
* Presentation - Sravya, Sreemukha, Harish

Artifacts
-------------------------------------------------------------------------------
* Final Report which includes finding of best configurations that result in high performance
* Source Code

List of Technologies
-------------------------------------------------------------------------------

Development Languages
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Python
* Hive Query Language

Software Tools
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Hive
* Ansible
* Hadoop
* Zookeeper


Compute Resources
-------------------------------------------------------------------------------

* OpenStack in FutureSystems

System Requirements
-------------------------------------------------------------------------------

* Size: Upto 10 VM instances
* OS: Ubuntu 15.10 64 bit
* Storage: Upto 10 GB

List of DataSets
-------------------------------------------------------------------------------
* Yelp Dataset 
https://www.yelp.com/dataset_challenge/dataset

Schedule
-------------------------------------------------------------------------------

* Week 1: Initial Meeting
* Week 2: Proposal
* Week 3: Discussion
* Week 4: Presentation
* Week 5: Refine raw dataset
* Week 6: Build systems
* Week 7: Perform Benchmarking 
* Week 8: Final Report, Review, Submission

Project Style and Type
-------------------------------------------------------------------------------

* Basic
* Benchmark

Acknowledgement
-------------------------------------------------------------------------------

This project idea is obtained from the following sources:

* Running Hadoop Cluster MR1 - http://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-multi-node-cluster/
* http://hortonworks.com/blog/impala-vs-hive-performance-benchmark/
* https://github.com/intel-hadoop/Big-Data-Benchmark-for-Big-Bench
