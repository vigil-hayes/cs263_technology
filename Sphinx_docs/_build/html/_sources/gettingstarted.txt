.. _gettingstarted:

***************
Getting started
***************

.. _installing_owncloud:

Installing ownCloud 
===================

Server
------

At the heart of the ownCloud is the idea of hosting your own cloud. 
In this part of the tutorial, we will describe installing and running your own ownCloud server.

There are two options:

#. Installing the development version of ownCloud from source `<https://github.com/owncloud/core>`_
#. Installing the stable version of ownCloud from `<http://owncloud.org/install/>`_

*Hint: the stable version is an easier intall process.*

Client (optional)
-----------------

After you have installed your ownCloud server, download the appropriate client. You can choose a mobile or desktop client at `<http://owncloud.org/install/>`_.
However, ownCloud is accessible over the web via browser.


Connecting to your ownCloud server via browser
==============================================

If you are on the machine where the ownCloud server is installed, start a new browser session and go to::

	http://localhost/owncloud/index.php

If you are accessing a remote ownCloud server, visit::

	http://REMOTE_OWNCLOUD_SERVER_IP/owncloud/index.php

In case you are using Mac OS X for development and set up your web server using MAMP, connect to your ownCloud server with::

	http://localhost:8888/owncloud/index.php

*Note that if you have configured your server to only be accessible via SSL, you need to access it using 'https' instead of 'http'. However, the default server is configured to operate using standard HTTP.*

.. _helpful_resources:

Helpful resources
=================

`<http://doc.owncloud.org/server/5.0/admin_manual/installation.html>`_ gives thorough installation guides for different operating systems (including various Linux distributions).
