` `_ ` Home `_ Recent Spaces People Apps `Templates`_ Create


Shuttle
-------
` Overview `_ ` Space Settings `_ Blog Space shortcuts ` Shuttle -
How-to Articles `_ ` Onboarding Helpers `_ ` Service Definition File
`_ ` Sample App `_ ` JIRA Board `_ ` Shuttle Everything `_ ` Pages `_

#. `Shuttle`_
#. …
#. `Developer Documents`_

` `_ Share


Important Coast Commands
========================
Created by `Satyam Jain`_ Last updated: `Feb 24, 2021`_


Glossary
~~~~~~~~



Permissible tenant values
+++++++++++++++++++++++++


+ `swig.gy`_ → Non-prod cluster
+ swiggy.cloud → Production cluster




Permissible environment values (non-exhaustive)
+++++++++++++++++++++++++++++++++++++++++++++++


+ d1
+ u4
+ sf
+ staging
+ preprod
+ production


Refer to the following document for debugging crashing RoCK instances

.. raw:: html

  <span data-inline-card="true" data-card-url="https: /swiggy.atlassian
  .net/wiki/spaces/SHUT/pages/2369849541">`https://swiggy.atlassian.net/
  wiki/spaces/SHUT/pages/2369849541`_



Status of the application
~~~~~~~~~~~~~~~~~~~~~~~~~

coast get status -e <env-name> -r singapore -s <service-name> -t
<tenant>



Example
+++++++


+ For a service name demo-rock deployed in production environment, the
  command should be ><strong data-renderer-mark="true">coast get status
  -e production -r singapore -s demo-rock -t swiggy.cloud< strong>
+ For a service name demo-rock deployed in sf environment, the command
  should be ><strong data-renderer-mark="true">coast get status -e sf -r
  singapore -s demo-rock -t swig.gy< strong>




Get logs for the application
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

coast get status -e <env-name> -r singapore -n <service-name> -t
<tenant> -i <instance-id>

You can get the instance id of the containers using the coast get
status command mentioned above.



Example
+++++++


+ For a service name demo-rock deployed in production environment and
  one of the instance id is *demo-rock-78cf6d59cb-mzx47*, the command
  should be

..raw:: html
  
  <strong data-renderer-mark="true">coast get logs -e
  production -r singapore -n demo-rock -t swiggy.cloud -i demo-rock-
  78cf6d59cb-mzx47</strong>

+ For a service name demo-rock deployed in sf environment and one of
  the instance id is *demo-rock-78cf6d59cb-mzx47*, the command should be
  ><strong data-renderer-mark="true">coast get logs -e sf -r singapore
  -n demo-rock -t swig.gy -i demo-rock-78cf6d59cb-mzx47< strong>


You can also see your application logs pushed in S3
><span data-inline-card="true" data-card-url="https: /swiggy.atlassian
.net/wiki/spaces/ROCK/pages/1466043787/How+to+access+Rock+Logs+stored+
in+s3+bucket">`https://swiggy.atlassian.net/wiki/spaces/ROCK/pages/146
6043787/How+to+access+Rock+Logs+stored+in+s3+bucket`_



Get K8s events for the any pod
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

coast get events -e <env-name> -r singapore -s <service-name> -t
<tenant> -i <instance-id>

You can get the instance id of the containers using the coast get
status command mentioned above.

Example:


+ For a service name demo-rock deployed in production environment and
  one of the instance id is *demo-rock-78cf6d59cb-mzx47*, the command
  should be ><strong data-renderer-mark="true">coast get events -e
  production -r singapore -s demo-rock -t swiggy.cloud -i demo-rock-
  78cf6d59cb-mzx47< strong>
+ For a service name demo-rock deployed in sf environment and one of
  the instance id is *demo-rock-78cf6d59cb-mzx47*, the command should be
  ><strong data-renderer-mark="true">coast get events -e sf -r singapore
  -s demo-rock -t swig.gy -i demo-rock-78cf6d59cb-mzx47< strong>




Get running version of any RoCK application
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

coast get runningVersion -s <service-name>-e <env-name> -r <env-
location> -t <tenant>

Example:


+ For a service name demo-rock deployed in production environment, the
  command should be ><strong data-renderer-mark="true">coast get
  runningVersion -s demo-rock -e production -r singapore -t
  swiggy.cloud< strong>

Like {"serverDuration": 50, "requestCorrelationId":
"6742f6580e87bc94"}
.. _Shuttle: /wiki/spaces/SHUT/overview
.. _
                                                            : /wiki/spaces/SHUT/pages/1792999593/On-boarding+Helpers
.. _swig.gy: http://swig.gy
.. _
                                                            : https://bitbucket.org/swigy/shuttle_test
.. _
                                                            : https://bitbucket.org/swigy/shuttle_app/src/master/app.yaml
.. _
                                                        : /wiki/spaces/viewspacesummary.action?key=SHUT
.. _https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/2369849541: https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/2369849541
.. _Templates: /wiki/templates
.. _https://swiggy.atlassian.net/wiki/spaces/ROCK/pages/1466043787/How+to+access+Rock+Logs+stored+in+s3+bucket: https://swiggy.atlassian.net/wiki/spaces/ROCK/pages/1466043787/How+to+access+Rock+Logs+stored+in+s3+bucket
.. _
                                                            : /wiki/spaces/SHUT/pages/1705314686/Shuttle+-+How-to+Articles
.. _
                                                : /wiki/spaces/SHUT/pages
.. _
                                            : /wiki/spaces/SHUT/pages/edit-v2/2382037255
.. _
                                                            : https://swiggy.atlassian.net/jira/software/projects/SHTTL/boards/528
.. _Home: /wiki/home
.. _Developer Documents: /wiki/spaces/SHUT/pages/2385575948/Developer+Documents
.. _Feb 24, 2021: /wiki/pages/diffpagesbyversion.action?pageId=2382037255&selectedPageVersions=4&selectedPageVersions=5
.. _
                                                            : https://swiggy.atlassian.net/secure/Dashboard.jspa?selectPageId=20179
.. _Satyam Jain: /wiki/people/5d70ff3a6c94420d96fab7a2?ref=confluence&src=profilecard


