============
Shuttle
============

Version |version|

Share
======


Star this space


Continuous Delivery (CD)
------------------------
Vision
-------

.. note::
    Problem statement
    Currently, to deploy any service on any given environment
    developer has to perform multiple operations such as bringing up infrastructure, 
    creating environment variables, defining network routes and DNS entries, 
    bringing up service, creating database schemas, populating metadata, creating monitoring and 
    alerting dashboards, injecting secrets (mysql,aws). 

.. tip::   
    Most of the process is manual and performed 
    once per environment. As the process is manual and best effort based, it is error prone and 
    time consuming, frustrating and not exactly the same across the environment.

User Guide
----------
Service Definition File (app.yaml)
----------------------------------
Meta
-----
Environment Variables
----------------------
Config
-------

.. code:: python

    overrides:
    - env: "sf"
    list:
    - configName: "thread_pool"
    value: 20
    - env: "u4"
    list:
    - configName: "thread_pool"
    value: 10

Secret
--------
Compute
---------
Datastores
------------
DAX
-----
Dynamo DB
----------
MySQL
-------
Redis
------
S3
----