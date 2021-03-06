Installation
===============================================================================

Prerequisite
-------------------------------------------------------------------------------

The following prerequisites are required to run the project

* fresh cloud environment
* load openstack module
* enable virtualenv
* clone `sw-project-template <https://github.iu.edu/staduru/sw-project-template>`_ & `big-data-stack <https://github.com/futuresystems/big-data-stack>`_ repositories at the same directory level  - ::

    git clone https://github.iu.edu/staduru/sw-project-template.git
    git clone https://github.com/futuresystems/big-data-stack.git


Installation
-------------------------------------------------------------------------------
Change directory to sw-project-template/src folder and run the launch.sh script as shown  - ::

    cd sw-project-template/src
    source launch.sh

This will run the ansible playbook to create three virtual instances and installs the Hadoop cluster with one name node and two data nodes. It then installs Pig on these virtual machines and downloads and extracts the yelp dataset into HDFS of the instance. It also deploys the required pig scripts and the main.sh shell script which further runs the pig scripts one after the other. Once the launch.sh completes its execution, ssh into the frontendnode of the created instances using the following command - ::

    ssh hadoop@<master 0 ip address>

The ip address can be found using ``nova list`` command.

After ssh into hadoop, the following commands should be used - ::

    bash
    source main.sh

Go back to `project report <README.rst>`_.
