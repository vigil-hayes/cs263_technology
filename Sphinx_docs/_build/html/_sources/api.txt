.. _apptutorial.rst:

**************************
Overview of ownCloud API's
**************************

In building an ownCloud application, there are two approaches: the ownCloud App API and the App Framework API.
This tutorial focuses on developing apps using the App Framework API. However, I will discuss the main
differences between the APIs and reference users to another tutorial on creating an ownCloud app using the App API.

In building an ownCloud application, there are two approaches: the ownCloud App API and the App Framework API.
This tutorial focuses on developing apps using the App Framework API. However, I will discuss the main
differences between the APIs and reference users to another tutorial on creating an ownCloud app using the App API.

In deciding between using the ownCloud App API and the App Framework API, consider that the ownCloud App API facilitates
the app-creating process for developers new to programming. Rather than use the MVC architecture that the App Framwork API
employs, ownCloud App API uses templates.

The main differences between the App API and the AppFramework API are summarized in a table below.

+-----------------+----------------------+---------------------------+
| **Criteria**    | **ownCloud App API** | **App Framwork API**      |
+=================+======================+===========================+
| Difficulty      | easy                 | medium                    |
+-----------------+----------------------+---------------------------+
| Architecture    | routes and templates | routes and MVC            |
+-----------------+----------------------+---------------------------+
| Testability     | hard                 | easy                      |
+-----------------+----------------------+---------------------------+
| Maintainability | hard                 | easy                      |
+-----------------+----------------------+---------------------------+
| Templates       | OC_Template          | OC_Template and Twig      |
+-----------------+----------------------+---------------------------+
| Security        | manual checks        | escapse XSS,              |
|                 |                      | default CSRF and          |
|                 |                      | Authentication checks     |
+-----------------+----------------------+---------------------------+

ownCloud App API
================

Components:
	* OCS
	* OCS_Result
	* OC Templates
	* View

Please follow this link to get the full ownCloud App API listing: `<http://api.owncloud.org/namespaces/OCP.html>`_

App Framework API
=================

Componenets:
	* Main
	* API Layer
	* Request
	* Controllers
	* Database
	* Responses
	* Middleware
	* Security and Authentication
	* Twig Templates
	* Testing

Please follow this link to get a full listing of the ownCloud API: `<http://doc.owncloud.org/server/master/developer_manual/app/appframework/api/index.html>`_
