.. _resource:

############################################
Resource configuration based on Environment
############################################

Created by Mukesh Kumar Kabra 

Last updated: Jun 09, 2021

Shuttle spawn the resources (storage+compute) in Prod as well non-prod
environment, the configuration of the resources varies based on
environment type.

There is 4 environment type in shuttle:


#. Dev
#. Hybrid (Integ)
#. Perf
#. Production


Resources. Configuration based on the environment type

.. list-table:: 
   :header-rows: 1

   * - 
     - Dev
     - Integ
     - Perf
     - Production

   * - EC2 instance
     - t3 or r5 series instance
     - t3 or r5 series instance
     - c5,m5 or r5 series instance
     - c5,m5 or r5 series instance
  
   * - RDS
     - db.t3.small
     - db.t3.small ( It can be configurable based on service)
     - Condition to get RDS type (For Perf & Production):
     - Condition to get RDS type (For Perf & Production):

   * - Redis
     - cache.t3.small
     - cache.t3.small
     - Conditions to get ElasticCache(Redis) (Perf & Production)
     - Conditions to get ElasticCache(Redis) (Perf & Production)
  
   * - DynamoDb
     - on-demand billing
     - on-demand billing
     - As per the rcu/wcu defined in app.yaml
     - As per the rcu/wcu defined in app.yaml

   * - ElastiSearch
     - t2.small.elasticsearch
     - t2.small.elasticsearch
     - Conditions to get ElastiSearch(Redis) (Perf & Production)
     - Conditions to get ElastiSearch(Redis) (Perf & Production)

   * - Dax
     - No-support
     - No-support
     - Conditions to get DAX(Redis) (Perf & Production)
     - Conditions to get DAX(Redis) (Perf & Production)

   * - Kafka
     - Basic node of confluent
     - Basic node of confluent
     -
     -


+ Conditions to get t3 or r5 series Ec2 instance (For UAT)

  Ec2 instance for UAT environments are determined by Memory defined in app.yaml


.. list-table:: 
   :header-rows: 1

   * - 
     - Range
     - Instance type

   * - Memory
     - <=500
     - `t3.nano`
  
   * - Memory
     - >500 && < 1000
     - `t3.micro`

   * - Memory
     - >1000 && < 2000
     - `t3.small`
  
   * - Memory
     - >2000 && < 4000
     - `t3.medium`
  
   * - Memory
     - >4000 && < 8000
     - `t3.large`

   * - Memory
     - >8000 && < 16000
     - `r5.large`

   * - Memory
     - >16000 && <= 32000
     - `r5.xlarge`




+ Condition to get c5, m5 or r5 series EC2 instance (For Perf &
  Production) 
  
  There are two parameter to determine the EC2 instance
  type for Perf & Production environment 
  
  + CPU 
  + Memory
  
  Steps to determine the instance type 
  
   #. Calculate the ratio of
      memory vs cpu > ratio = float64(m) (cpu * 1000) 
   #. Determine instance
      series based on ratio:

.. list-table:: 
   :header-rows: 0

   * - Ratio
     - <=2.5
     - c5

   * - Ratio
     - >2.5 && <=6
     - m5

   * - Ratio
     - >6
     - r5

   
   
+ Determine the instance type based on cpu

.. list-table:: 
   :header-rows: 0

   * - CPU
     - >2 && <=4
     - xlarge

   * - Ratio
     - >4 && <=8
     - 2xlarge

   * - Ratio
     - >8 && <=16
     - 4xlarge



+ Condition to get RDS type (For Perf & Production):


There are 3 parameters to determine the RDS instance type


+ Disk
+ RPS
+ WPS


All Parameter has to define in app.yaml (`MySQL <https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/1689290226/MySQL>`_ )


.. list-table::
   :header-rows: 1

   * -
     - RDS instance type
   
   * - disk <= 100 && Rps <= 1200 && Wps <= 500
     - db.r5.large
  
   * - disk <= 100 && params.Rps <= 2000 && params.Wps <= 1000
     - db.r5.xlarge
   
   * - disk <= 200 && params.Rps <= 1200 && params.Wps <= 500
     - db.r5.xlarge
  
   * - disk <= 500 && params.Rps <= 2500 && params.Wps <= 1000
     - db.r5.4xlarge
  
   * - default
     - db.r5.4xlarge


+ Conditions to get ElasticCache(Redis) (Perf & Production)
  Redis instance type is determined by Memory defined in app.yaml (`Redis <https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/1689290233/Redis>`_)

.. list-table::
   :header-rows: 0

   * - Memory
     - <=500
     - `cache.t3.small`

   * - Memory
     - <= `1500`
     - `cache.t3.small`

   * - Memory
     - <= `3000`
     - `cache.t3.medium`
  
   * - Memory
     - <= `6000`
     - `cache.r5.large`

   * -  Memory
     - <= `14000`
     - `cache.r5.xlarge`

   * - Memory
     - <= `30000`
     - `cache.r5.2xlarge`

   * - Memory
     - above
     - `cache.r5.2xlarge`

**Conditions to get ElastiSearch(Redis) (Perf & Production)**

Elastic Search instance is determined based on following parameter


#. CPU
#. Memory ( Memory should be in Gi)

.. list-table:: 
   :header-rows: 0

   * - memory<=4 && `cpu <= 2`
     - `t2.medium.elasticsearch`

   * - Default
     - `r5.large.elasticsearch`


+ Conditions to get DynamoDb(Redis) (Perf & Production)

+ Conditions to get DAX(Redis) (Perf & Production)

Dax instance type is determined by Memory defined in app.yaml
(`DAX <https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/1824588135/DAX>`_)

.. list-table:: 
   :header-rows: 0

   * - Memory
     - <= 16000
     - dax.r5.large

   * - Memory
     - <= 32000
     - dax.r5.xlarge

   * - Memory
     - <= 64000
     - dax.r5.2xlarge

   * - Memory
     - <= 128000
     - dax.r5.4xlarge

   * - Memory
     - Above all
     - dax.r5.8xlarge

