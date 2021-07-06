.. _service:

######################################
Where to find my service's resources?
######################################

Created by Satyam Jain 

Last updated: Mar 01, 2021

+ Glossary

    + List of permissible non-prod environment(s) (Non-exhaustive)
    + Account Details
    + Permissible Engineering roles:


+ Non-Prod

    + Cloudformation for Service
    + EC2 Instances
    + RoCK Instances
    + Datastores


+ Production (Non-PCI services)

    + How to switch roles
    + RoCK Instances


+ Production (PCI services)


Shuttle uses various account for the deployment of the services in
different environments. As a developer, this document will help you
locate the resources deployed for your services.



Glossary
````````



List of permissible non-prod environment(s) (Non-exhaustive)
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+ d1
+ sf
+ u4
+ staging
+ preprod




Account Details
+++++++++++++++


+ shuttle account → 157529275398
+ swiggydp account → 766598310387
+ rockprod account → 510226462375
+ production account → 361474736119




Permissible Engineering roles:
++++++++++++++++++++++++++++++


+ dev
+ qa
+ lead




Non-Prod
````````

For non-production deployments, we use the Shuttle account for the
deployment of services in VM. For any service, the deployment (EC2)
will be done using a cloudformation template in the Singapore region
of the Shuttle account.



Cloudformation for Service
++++++++++++++++++++++++++

For rolling deployments: **<name-of-the-service>-<env-name>-<region>**

For canary deployments: **<name-of-the-service>-<env-name>-<region>-canary**

Example:

For a service named demo-ec2, the stack name in sf environment would
be **demo-ec2-sf-singapore**



EC2 Instances
+++++++++++++

For finding the instances directly, hop on to the EC2 instance page
and search for the instances using the following naming convention

Rolling deployment: **<name-of-the-service>-<env-name>-<region>**

Canary deployment: **<name-of-the-service>-<env-name>-<region>-canary**

Example:

For a service named demo-ec2, the instance name in sf environment
would be **demo-ec2-sf-singapore**



RoCK Instances
++++++++++++++

For getting the details on instances spawned in the RoCK environment

Rolling deployment: **coast get status -e <env-name> -r singapore -s <service-name> -t swig.gy**

Canary deployment: **coast get status -e <env-name> -r singapore -s <service-name> -t swig.gy --type canary**



Datastores
++++++++++

The datastores would be spawned using CF templates. To locate the CF
templates, switch to the Singapore region of the Shuttle account

Naming convention: **<name-of-the-service-without(-)><datastore-dependency-name-in-app.yaml>env-name><region>**

Example: 

`https://bitbucket.org/swigy/ratings/src/43a9287da083b5fd13617e6252a6cb1f8023a35a/app.yaml#lines-65 - Connect to preview <https://bitbucket.org/swigy/ratings/src/43a9287da083b5fd13617e6252a6cb1f8023a35a/app.yaml#lines-65>`_ 

For this redis dependency, search for the following CF stack in SF environment

.. code :: python
  
  <ratingsservice><rediscache><sf><singapore>

Effectively, search for **ratingsservicerediscachesfsingapore**

.. note :: 
  Access to the Shuttle account is governed by the Shuttle team. Please
  raise a Jira on Shuttle board for getting access to the Shuttle
  account.



Production (Non-PCI services)
`````````````````````````````

**The production deployments of the services is done in the rockprod account**. 
For accessing the rockprod account, login to the Shuttle
account and switch role to the following role

<pod-name>.<engg-role>

Switch role example(s):

- infra.lead

- payments.dev



How to switch roles
+++++++++++++++++++

`https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-console.html <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-console.html>`_

.. code :: python

  Account : 510226462375 

  Role : <pod-name>.dev 

  Display name : <pod-name>.dev


The naming conventions for the service stacks and instances remain the
same on the production environment as well.

.. tip :: 
  For the datastores, Shuttle uses the same datastores as the existing
  ones in the production account. Hence, you can login to the production
  account and locate your resources there.



RoCK Instances
++++++++++++++

For getting the details on instances spawned in the RoCK environment

Rolling deployment: **coast get status -e <env-name> -r singapore -s <service-name> -t swiggy.cloud**

Canary deployment: **coast get status -e <env-name> -r singapore -s <service-name> -t swiggy.cloud --type canary**



Production (PCI services)
`````````````````````````

The PCI services will be deployed in the production environment. The
naming conventions of the EC2 deployments remain the same. You can
login to the production account and switch to the singapore region for
accessing the resources in PCI environment.

.. note :: 
  Access to the PCI environment & production account is governed by
  DevOps team. Please raise a DVO ticket for the same.
