.. _installation_ubuntu:

****************************
Installation in Ubuntu Linux
****************************

.. |br| raw:: html

 <br />

.. _QGIS_installation_ubuntu:
 
QGIS download and installation
------------------------------

* Open a terminal and type::

	sudo apt-add-repository ppa:ubuntugis/ubuntugis-unstable

* Press Enter and type the user password;

* Press Enter again to confirm;

* Type in a terminal::

	sudo apt-get update

* Press Enter;

* Type in a terminal::

	sudo apt-get install qgis saga python-matplotlib python-scipy

* Press Enter and wait until the software is downloaded and installed.

Now, QGIS 2 is installed.

.. image:: _static/QGIS_ubuntu.jpg

.. _plugin_installation_ubuntu:
 
Semi-Automatic Classification Plugin installation
-------------------------------------------------

* Run QGIS 2;

* From the main menu, select Plugins > Manage and Install Plugins;

.. image:: _static/install_ubuntu.jpg

* From the All menu, select the Semi-Automatic Classification Plugin and click the button Install plugin;

.. image:: _static/plugins_ubuntu.jpg

* The plugin should be automatically activated; however, be sure that the Semi-Automatic Classification Plugin and Processing are checked in the Installed menu;

.. image:: _static/installed_ubuntu.jpg

.. _plugin_configuration_ubuntu:

Configuration of the Processing plugin
--------------------------------------

This configuration is required because SAGA GIS needs to be activated in the Processing framework of QGIS 2.

* Select the menu Processing > Options and configuration; click the + symbol beside Providers;

.. image:: _static/processing_ubuntu_open.jpg

* Click the + symbol beside Providers, and click the symbol + beside SAGA;

.. image:: _static/processing_ubuntu.jpg

* SAGA should be already configured. However, verify the following settings:

	#. The checkbox Activate is checked;
	#. Important! If SAGA 2.0.8 was installed, the checkbox Enable SAGA 2.0.8 compatibility must be checked; if SAGA 2.1.0 was installed then it must be unchecked.

Now, the Semi-Automatic Classification Plugin is installed and configured. The plugin is available under the Raster menu of QGIS, or you can click the icon in the main interface (if the raster menu is activated).

.. image:: _static/SemiAutomaticClassificatioPlugin_ubuntu.jpg

|br|

.. image:: _static/SemiAutomaticClassificatioPlugin_ubuntu2.jpg