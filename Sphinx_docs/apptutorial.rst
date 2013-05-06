.. _apptutorial.rst:

*********************
ownCloud App Tutorial
*********************

This is an ownCloud app tutorial that will result in a simple application for ownCloud based on the Advanced App Template. This tutorial is written for the stable version of ownCloud (v. 5) and with the support of the stable app repository.
Prior to developing this app, you will need to have your ownCloud server set up based on the stable branch.

.. _setup:

Setup
=====

Clone the ownClouds apps repository into either:
	* /var/www
	* /var/www/html
	* /srv/http
	* /Users/[USER]/Sites

Change into the appropriate web server directory::

        cd /Users/[USER]/Sites

And clone the appropriate version of the apps::

	sudo git clone git://github.com/owncloud/apps.git -b stable5 apps
	
Now, change into the apps/ directory::

	cd apps/

To finish our setup, we need to make a modification to two files, *apptemplateadvanced/appinfo/info.xml* and *appframework/appingo/info.xml*. There is currently a bug in ownCloud core that removes app directories when an app is disabled. In order to prevent that, add this line in *both* files after the *<author>AUTHOR NAME</author>*::

	<shipped>true</shipped>

.. _creating-an-app:

Creating an App based on Advanced App Template
==============================================

ownCloud has made using the App Framework even easier with the Advanced App Template. The following steps will show you how to make your own app from the Advanced App Template.

First, copy the apptemplateadvanced/ directory to a directory with the name of your app::
	
	cp -r apptemplateadvanced/ myapp

Change into your app directory::
	
	cd myapp/

Now, you need to customize the files to refer to your app id and name instead of apptemplateadvanced.
We will do this by executing::
	find . -type f -exec sed -i .tmp 's/apptemplateadvanced/myapp/g' {} \;
	find . -type f -exec sed -i .tmp 's/apptemplate_advanced/myapp/g' {} \;
	find . -type f -exec sed -i .tmp 's/AppTemplateAdvanced/MyApp/g' {} \;
	find . -type f -exec sed -i .tmp 's/Advanced App Template/My App/g' {} \;
	find . -name "*.tmp" -type f -delete

All that's left is changing the author's name in myapp/appinfo/info.xml to your name.

.. _enabling-app:

Enabling App
============

To enable your app, you need to link it with the owncloud/apps/ directory::
	
	ln -s /path/to/file/apps/myapp /path/to/file/owncloud/apps/myapp

Go to the ownCloud URL at `<http://localhost/owncloud/index.php>`_ or `<http://localhost:8888/owncloud/index.php>`_.
Navigate to the Apps page.

First, you will need to enable the App Framework app.

'My App' should be in the nav bar on the left side of the page. Enable it and an icon with the words "My App" should appear in the ownCloud dock on the leftmost part of the screen. If you click it, it will take you to a page with a text field and a button. The logic for this app is dictated by myapp/templates/main.php. To get an idea of how the components of myapp work, see :ref:`app-modules`.


That's it! That's all it takes to get an application set up with the ownCloud App Framework and Advanced App Template. Happy coding!
