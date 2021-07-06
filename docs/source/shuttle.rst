.. _shuttle:

###########################
Important Shuttle commands
###########################

Created by Satyam Jain 

Last updated: May 26, 2021 

by Mukesh Kumar Kabra

+ Service Definition File Validation
+ Deployment

    + General Feature Deployment
    + Single Environment Deployment
    + Hotfix Deployment
    + NoCode Hotfix Deployment
    + Hotfix deployment with specified concurrency

+ Abort Deployment
+ Rollback Deployment
+ Secrets

    + Create Secret
    + Update Secret
    + Retrieve Secret

+ Utilities

    + Consul


Service Definition File Validation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. tip ::
  coast validate pipeline -f <location-of-the-file>

The location of the file on your laptop. Please provide the complete
path of the file on your laptop.



Deployment
~~~~~~~~~~



General Feature Deployment
``````````````````````````

.. tip ::
  coast trigger pipeline -r *<repo-name>* -a *<commit-sha>* -b
  *<branch>* -f *<service-definition-file>*


+ Repo Name: The repo from where the images are generated.
+ Commit SHA: The source Commit SHA from where you want the configs &
  code to be picked.
+ Branch: The relevant branch for the commit
+ Service Definition File: Provide the location of service definition
  file from the root of the repository.




Single Environment Deployment
`````````````````````````````

.. tip :: 
  coast trigger pipeline -r *<repo-name>* -a *<commit-sha>* -b
  *<branch>* -f *<service-definition-file> -m dev -e <env-name>*


+ Repo Name: The repo from where the images are generated.
+ Commit SHA: The source Commit SHA from where you want the configs &
  code to be picked.
+ Branch: The relevant branch for the commit
+ Service Definition File: Provide the location of service definition
  file from the root of the repository.
+ Env Name: The name of the environment in which you wish to deploy
  your service




Hotfix Deployment
`````````````````

.. tip :: 
  coast trigger pipeline -r *<repo-name>* -a *<commit-sha>* -b
  *<branch>* -f *<service-definition-file> -m hotfix -e <env-name>*


+ Repo Name: The repo from where the images are generated.
+ Commit SHA: The source Commit SHA from where you want the configs &
  code to be picked.
+ Branch: The relevant branch for the commit
+ Service Definition File: Provide the location of service definition
  file from the root of the repository.
+ Env Name: The name of the environment in which you wish to deploy
  the hotfix.




NoCode Hotfix Deployment
````````````````````````

Useful for the cases where the developer want to deploy only config
changes without changing the code.

.. tip ::
  coast trigger pipeline -r *<repo-name>* -a *<commit-sha>* -b
  *<branch>* -f *<service-definition-file> -m hotfix -e <env-name> --no-
  code*


+ Repo Name: The repo from where the images are generated.
+ Commit SHA: The source Commit SHA from where you want the configs to
  be picked. The code version would remain the same as already deployed
  on the given environment.
+ Branch: The relevant branch for the commit
+ Service Definition File: Provide the location of service definition
  file from the root of the repository.
+ Env Name: The name of the environment in which you wish to deploy
  the hotfix.


.. note ::
  Please ensure that you use the commit sha from which you want the
  configs to be picked in case of hotfix nocode deployment.



Hotfix deployment with specified concurrency
````````````````````````````````````````````

.. tip ::
  coast trigger pipeline -r <*repo*> -a <*commit-sha*> -b <*branch*>
  -f <*service-definition-file*> -e <*env-name*> -m hotfix -c <*concurrency-percentage*>


+ Repo Name: The repo from where the images are generated.
+ Commit SHA: The source Commit SHA from where you want the configs to
  be picked. The code version would remain the same as already deployed
  on the given environment.
+ Branch: The relevant branch for the commit
+ Service Definition File: Provide the location of service definition
  file from the root of the repository.
+ Env Name: The name of the environment in which you wish to deploy
  the hotfix.
+ Concurrency Percentage: The percentage of the instances you want to
  rotate at a time. Max permitted value: 70


For more details on concurrency, please refer to this `document <https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/2119730651/How+to+use+Deployment+concurrency+feature>`_



Abort Deployment
~~~~~~~~~~~~~~~~

.. tip :: 
  coast trigger abort -r *<repo-name>* -a *<commit-sha>* -b *<branch>*
  -f *<service-definition-file>* -e <env-name>


+ Repo Name: The repo from where the images are generated.
+ Commit SHA: The source Commit SHA from where you want the configs &
  code to be picked.
+ Branch: The relevant branch for the commit
+ Service Definition File: Provide the location of service definition
  file from the root of the repository.
+ Env Name: The name of the environment where you want to abort the
  deployment.


For more details on aborting the deployment, please refer to this
`document <https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/1821612683/How+to+Rollback+Abort+the+deployment+via+Shuttle>`_



Rollback Deployment
~~~~~~~~~~~~~~~~~~~

.. tip ::
  coast trigger rollback -r *<repo-name>* -a *<commit-sha>* -b
  *<branch>* -f *<service-definition-file>* -e *<env-name>*


+ Repo Name: The repo from where the images are generated.
+ Commit SHA: The source Commit SHA from where the deployment was
  done.
+ Branch: The relevant branch for the commit.
+ Service Definition File: Provide the location of service definition
  file from the root of the repository.
+ Env Name: The name of the environment where you want to rollback the
  deployment to previous version.


For more details on rolling back the deployment, please refer to this
`document <https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/1821612683/How+to+Rollback+Abort+the+deployment+via+Shuttle>`_



Secrets
~~~~~~~



Create Secret
`````````````

.. tip :: 
  coast create secret -r <*repo*> -a <*commitSHA*> -b <*branch*> -f <*service-definition-file*> -n <*secret_name*> -v < *secret_value*> -e
  <*env_name*> -l <*env-location*>


+ Repo Name: The repo that contains the code & config for the
  application
+ Commit SHA: Commit SHA from which we should pick the service
  definition file
+ Branch: The relevant branch for the commit sha
+ Service Definition File: Provide the location of service definition
  file from the root of the repository.


.. note ::
  The above parameters are solely required for the purpose of
  authentication, a secret once created will be injected in all the
  subsequent deployments for the application in the environment in which
  it is created.


+ Env Name: The name of the environment in which you create the
  secret.
+ Env Location : The location of the environment, defaults to
  singapore
+ Secret Name : The name of the secret you want to create. Please note
  that the same key would be used for injecting the secret in the
  application’s environment.
+ Secret Value: The value of the secret.




Update Secret
`````````````

.. tip :: 
  coast update secret -r <*repo*> -a <*commitSHA*> -b < *branch*> -f <*service-definition-file*> -n <*secret_name*> -v 
  <*new_secret_value*> -e <*env_name*> -l <*env-location*>


+ Repo Name: The repo that contains the code & config for the
  application
+ Commit SHA: Commit SHA from which we should pick the service
  definition file
+ Branch: The relevant branch for the commit sha
+ Service Definition File: Provide the location of service definition
  file from the root of the repository.


.. note :: 
  The above parameters are solely required for the purpose of
  authentication, a secret once created will be injected in all the
  subsequent deployments for the application in the environment in which
  it is created.


+ Env Name: The name of the environment in which you update the
  secret.
+ Env Location : The location of the environment, defaults to
  singapore.
+ Secret Name : The name of the secret you want to update. Please note
  that the same key would be used for injecting the secret in the
  application’s environment.
+ Secret Value: The new value of the secret.




Retrieve Secret
```````````````

Please note that you can only retrieve the developer created secrets.
For more details, refer to this `document <https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/1811611649/How+to+create+update+or+view+secrets+for+your+service>`_

.. tip :: 
  coast get secret -r < *repo*> -a <*commitSHA*> -b <*branch*> 
  -f <*service-definition-file*> -n <*secret_name*> -v <*new_secret_value*> -e <*env_name*> -l <*env-location*>


+ Repo Name: The repo that contains the code & config for the
  application
+ Commit SHA: Commit SHA from which we should pick the service
  definition file
+ Branch: The relevant branch for the commit sha
+ Service Definition File: Provide the location of service definition
  file from the root of the repository.


.. note ::
  The above parameters are solely required for the purpose of
  authentication, a secret once created will be injected in all the
  subsequent deployments for the application in the environment in which
  it is created.


+ Env Name: The name of the environment for which you want to retrieve
  the secret.
+ Env Location : The location of the environment, defaults to
  singapore.
+ Secret Name : The name of the secret you want to retrieve.




Utilities
~~~~~~~~~

Consul
``````

.. tip ::
  coast get consul -u <consul-endpoint> -s <service-name>


+ Consul Endpoint: The endpoint of the consul from where you want to
  dump the consul variables
+ Service Name: The name of the service for which you want to dump the
  consul variables.


For more details, refer to this `document <https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/1792868496/Dump+consul+variables+into+Shuttle+format+config+files>`_


