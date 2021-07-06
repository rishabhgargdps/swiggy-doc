.. _coast:

========================
Important Coast Commands
========================

Created by Satyam Jain Last updated: Feb 24, 2021


Glossary
~~~~~~~~

Permissible tenant values
+++++++++++++++++++++++++


+ `swig.gy <https://www.swiggy.com/>`_ → Non-prod cluster
+ swiggy.cloud → Production cluster

Permissible environment values (non-exhaustive)
+++++++++++++++++++++++++++++++++++++++++++++++

+ d1
+ u4
+ sf
+ staging
+ preprod
+ production


.. note :: 
  Refer to the following document for debugging crashing RoCK instances 
  `How to debug failing RoCK deployments <https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/2369849541>`_


Status of the application
~~~~~~~~~~~~~~~~~~~~~~~~~

coast get status -e <env-name> -r singapore -s <service-name> -t
<tenant>

Example
+++++++


+ For a service name demo-rock deployed in production environment, the
  command should be **coast get status -e production -r singapore -s demo-rock -t swiggy.cloud**
+ For a service name demo-rock deployed in sf environment, the command
  should be **coast get status -e sf -r singapore -s demo-rock -t swig.gy**




Get logs for the application
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

coast get status -e <env-name> -r singapore -n <service-name> -t
<tenant> -i <instance-id>

.. note :: 
  You can get the instance id of the containers using the coast get
  status command mentioned above.



Example
+++++++


+ For a service name demo-rock deployed in production environment and
  one of the instance id is *demo-rock-78cf6d59cb-mzx47*, the command
  should be **coast get logs -e production -r singapore -n demo-rock -t swiggy.cloud -i demo-rock-78cf6d59cb-mzx47**
+ For a service name demo-rock deployed in sf environment and one of
  the instance id is *demo-rock-78cf6d59cb-mzx47*, the command should be
  **coast get logs -e sf -r singapore -n demo-rock -t swig.gy -i demo-rock-78cf6d59cb-mzx47**


You can also see your application logs pushed in S3
`How to access Rock Logs stored in s3 bucket <https://swiggy.atlassian.net/wiki/spaces/ROCK/pages/146
6043787/How+to+access+Rock+Logs+stored+in+s3+bucket>`_



Get K8s events for the any pod
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

coast get events -e <env-name> -r singapore -s <service-name> -t
<tenant> -i <instance-id>

You can get the instance id of the containers using the coast get
status command mentioned above.

Example:


+ For a service name demo-rock deployed in production environment and
  one of the instance id is *demo-rock-78cf6d59cb-mzx47*, the command
  should be **coast get events -e production -r singapore -s demo-rock -t swiggy.cloud -i demo-rock-78cf6d59cb-mzx47**
+ For a service name demo-rock deployed in sf environment and one of
  the instance id is *demo-rock-78cf6d59cb-mzx47*, the command should be
  **coast get events -e sf -r singapore -s demo-rock -t swig.gy -i demo-rock-78cf6d59cb-mzx47**




Get running version of any RoCK application
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

coast get runningVersion -s <service-name>-e <env-name> -r <env-location> -t <tenant>

Example:


+ For a service name demo-rock deployed in production environment, the
  command should be **coast get runningVersion -s demo-rock -e production -r singapore -t swiggy.cloud**