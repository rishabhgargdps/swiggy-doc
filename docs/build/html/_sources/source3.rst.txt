


Jump to
+++++++


#. `Confluence navigation`_
#. `Side navigation`_
#. `Page`_

This page was in the background for too long and may not have fully
loaded. Try to refresh the page ` `_ ` Home `_ Recent Spaces People
Apps `Templates`_ Create


Shuttle
-------
` Overview `_` Space Settings `_ Blog Space shortcuts ` Shuttle - How-
to Articles `_` Onboarding Helpers `_` Service Definition File `_`
Sample App `_` JIRA Board `_` Shuttle Everything `_ ` Pages `_ `
Archived pages `_

#. `Shuttle`_
#. …
#. `Developer Documents`_

` `_ Share


Important Coast Commands
========================
Created by `Satyam Jain`_ Last updated: `Feb 24, 2021`_ 2 min read


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
`https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/2369849541`_



Status of the application
~~~~~~~~~~~~~~~~~~~~~~~~~

coast get status -e <env-name> -r singapore -s <service-name> -t
<tenant>


Example
+++++++


+ For a service name demo-rock deployed in production environment, the
  command should be coast get status -e production -r singapore -s demo-
  rock -t swiggy.cloud
+ For a service name demo-rock deployed in sf environment, the command
  should be coast get status -e sf -r singapore -s demo-rock -t swig.gy



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
  should be coast get logs -e production -r singapore -n demo-rock -t
  swiggy.cloud -i demo-rock-78cf6d59cb-mzx47
+ For a service name demo-rock deployed in sf environment and one of
  the instance id is *demo-rock-78cf6d59cb-mzx47*, the command should be
  coast get logs -e sf -r singapore -n demo-rock -t swig.gy -i demo-
  rock-78cf6d59cb-mzx47


You can also see your application logs pushed in S3
` How to access Rock Logs stored in s3 bucket`_



Get K8s events for the any pod
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

coast get events -e <env-name> -r singapore -s <service-name> -t
<tenant> -i <instance-id>

You can get the instance id of the containers using the coast get
status command mentioned above.

Example:


+ For a service name demo-rock deployed in production environment and
  one of the instance id is *demo-rock-78cf6d59cb-mzx47*, the command
  should be coast get events -e production -r singapore -s demo-rock -t
  swiggy.cloud -i demo-rock-78cf6d59cb-mzx47
+ For a service name demo-rock deployed in sf environment and one of
  the instance id is *demo-rock-78cf6d59cb-mzx47*, the command should be
  coast get events -e sf -r singapore -s demo-rock -t swig.gy -i demo-
  rock-78cf6d59cb-mzx47



Get running version of any RoCK application
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

coast get runningVersion -s <service-name>-e <env-name> -r <env-
location> -t <tenant>

Example:


+ For a service name demo-rock deployed in production environment, the
  command should be coast get runningVersion -s demo-rock -e production
  -r singapore -t swiggy.cloud

Like Be the first to like this {"serverDuration": 53,
"requestCorrelationId": "893a3c3a10aca73e"}
.. _Side navigation: https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/2382037255/Important+Coast+Commands#AkSideNavigation
.. _Home: https://swiggy.atlassian.net/wiki/home
.. _Pages: https://swiggy.atlassian.net/wiki/spaces/SHUT/pages
.. _How to access Rock Logs stored in s3 bucket: https://swiggy.atlassian.net/wiki/spaces/ROCK/pages/1466043787/How+to+access+Rock+Logs+stored+in+s3+bucket
.. _Page: https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/2382037255/Important+Coast+Commands#AkMainContent
.. _Satyam Jain: https://swiggy.atlassian.net/wiki/people/5d70ff3a6c94420d96fab7a2?ref=confluence&src=profilecard
.. _Shuttle Everything: https://swiggy.atlassian.net/secure/Dashboard.jspa?selectPageId=20179
.. _Developer Documents: https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/2385575948/Developer+Documents
.. _Sample App: https://bitbucket.org/swigy/shuttle_test
.. _swig.gy: http://swig.gy/
.. _Feb 24, 2021: https://swiggy.atlassian.net/wiki/pages/diffpagesbyversion.action?pageId=2382037255&selectedPageVersions=4&selectedPageVersions=5
.. _Space Settings: https://swiggy.atlassian.net/wiki/spaces/viewspacesummary.action?key=SHUT
.. _Templates: https://swiggy.atlassian.net/wiki/templates
.. _Onboarding Helpers: https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/1792999593/On-boarding+Helpers
.. _https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/2369849541: https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/2369849541
.. _ : https://swiggy.atlassian.net/wiki/spaces/SHUT/archivedpages
.. _Service Definition File: https://bitbucket.org/swigy/shuttle_app/src/master/app.yaml
.. _Shuttle: https://swiggy.atlassian.net/wiki/spaces/SHUT/overview
.. _JIRA Board: https://swiggy.atlassian.net/jira/software/projects/SHTTL/boards/528
.. _Shuttle - How-to Articles: https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/1705314686/Shuttle+-+How-to+Articles
.. _Confluence navigation: https://swiggy.atlassian.net/wiki/spaces/SHUT/pages/2382037255/Important+Coast+Commands#AkTopNav


