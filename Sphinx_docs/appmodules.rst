.. _app-modules:

************************************
Modules of the Advanced App Template
************************************

The following components are part of Advanced App Template:
        * 3rdparty
        * admin
        * appinfo
        * cache
        * coffee
        * controller
        * css
        * db
        * dependencyinjection
        * img
        * js
        * templates
        * tests

All of these components are necessary for an app based on the Advanced App Template to work.

.. _3rdparty:
3rdparty
========

3rd party javascript that can be integrated into the app. 

.. _admin:
admin
=====

Contains settings.php, which calls *main()* and connects main with the owncloud/admin page.

.. _appinfo:
appinfo
=======

Contains all metadata pertaining to the app. The three main files are:
	* :ref:`info`
	* :ref:`routes`
	* :ref:`app`

.. _info:

info.xml
--------
info.xml specifies:
	* *License* This file also dictates the license used for the app. In order for the app to function, it must be AGPL compatible and *MUST NOT* be a proprietary license. 
	* *Author*
	* *Version*
	* *ownCloud version requirements*
	* *App ID*
	* *App Name*
	* *App Description*

.. _routes:

routes.php
----------
Maps file pathnames to URLs. This facilitates method calling or value extraction from certain URLs.

.. _app:

app.php
-------
Provides navigation entry code that provides ownCloud with App ID, App Name, App Description, App Author, and App URL so that it can produce the App in the App Nav bar.

.. _coffee:
coffee
======

CoffeeScript files that compile into JavaScript files in :ref:`js`. 

.. _controller:
controller
==========

Contains the Controller functions that are used as part of the MVC framework. 

.. _css:
css
===

Contains CSS files for your app. To include an image or css in CSS, prepend the following to your path:
	* %appswebroot%: gets the absolute path to your app
	* %webroot%: gets the absolute path to owncloud

Example::

	.folder > .title {
		background-image: url('%webroot%/core/img/places/myimage.png');
	}

ownCloud uses formfactors for different platforms. ownCloud automatically detects the formfactor your app employs. The different formfactors are:
	* mobile
	* tablet
	* standalone

In order to use the formfactor, add it as part of the filename. For example:

	style.mobile.css
	mystyle.standalone.css


.. _db:
db
==

Contains database layer for your app. Separates data entries from database queries. 

.. _dependencyinjection:
dependencyinjection
===================

Enables you to create testable code. This is done by decoupling class dependencies. Dependency Injection facilitates the automatic creating of unit tests. You can add your own created classes to dicontainer.php in order to enable the creation and maintenance of clean, testable code. See `ownCloud: Dependency Injection <http://doc.owncloud.org/server/5.0/developer_manual/app/general/dependencyinjection.html>`_ for more details.

.. _img:
img
===

Contains all image files used by application.

.. _js:
js
==

Contains all JavaScript for the application. 

.. _templates:
templates
=========

There are two types of templates available to ownCloud apps--OC Templates and Twig Templates.

OC Templates provide template functions from the class `OC_Templates <http://doc.owncloud.org/server/5.0/developer_manual/app/app/api/templates.html>`_. 

Twig templates are the preferred template because they provide better prevention of XSS. In order to facilitate integration with ownCloud, the App Framework provides additional functions for Twig. These can be found `here <http://doc.owncloud.org/server/5.0/developer_manual/app/appframework/templates.html#additional-twig-extensions>`_.

.. _tests:
tests
=====

Contains unit tests for your application. Tests usually have the suffix **Test** appended to the filename of the corresponding code to be tested. For example, controllers/ItemController.php would have a test file named tests/controllers/ItemControllerTest.php. PHPUnit executes all files ending in Test.php. See `Unit Testing <http://doc.owncloud.org/server/5.0/developer_manual/app/appframework/unittesting.html>`_ for more information.


