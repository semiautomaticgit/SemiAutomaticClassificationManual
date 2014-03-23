.. _installation:


*******************
Plugin Installation
*******************

.. |br| raw:: html

 <br />

The Semi-Automatic Classification Plugin requires the installation of QGIS and SAGA, and their activation in the Processing plugin. Also, it requires GDAL, Matplotlib, Numpy and SciPy.
|br|
This section describes the installation of the Semi-Automatic Classification Plugin for several supported Operating Systems:

.. contents::
	:depth: 2
	:local:

.. _windows32bit:

Installation in Windows 32 bit
------------------------------

.. _QGIS_installation_win32bit:
 
QGIS download and installation
==============================

* Download the latest QGIS version 32 bit from here (the direct download of QGIS 2.2 here);

* Execute the QGIS installer with administrative rights, accepting the default configuration.

Now, QGIS 2 is installed.
 
.. _plugin_installation_win32bit:
 
Semi-Automatic Classification Plugin installation
=================================================

* Run QGIS 2;

* From the main menu, select Plugins > Manage and Install Plugins;

* From the All menu, select the Semi-Automatic Classification Plugin and click the button Install plugin;

* The plugin should be automatically activated; however, be sure that the Semi-Automatic Classification Plugin and Processing are checked in the Installed menu;

.. _plugin_configuration_win32bit:

Configuration of the Processing plugin
======================================

This configuration is required because SAGA GIS needs to be activated in the Processing framework of QGIS 2.

* Select the menu Processing > Options and configuration; click the + symbol beside Providers;

* Click the + symbol beside Providers, and click the symbol + beside SAGA;
 
* SAGA should be already configured. However, verify the following settings:
	#. The checkbox Activate is checked;
	#. Important! Because SAGA 2.0.8 was installed, the checkbox Enable SAGA 2.0.8 compatibility must be checked; if SAGA 2.1.0 was installed then it must be unchecked;
	#. The path in SAGA folder points to::
	
		C:/PROGRA~2/QGISVA~1/apps\saga

Now, the Semi-Automatic Classification Plugin is installed and configured. The plugin is available under the Raster menu of QGIS, or you can click the icon in the main interface (if the raster menu is activated).

.. _windows64bit:

Installation in Windows 64 bit
------------------------------

.. _QGIS_installation_win64bit:
 
QGIS download and installation
==============================

* Download the latest QGIS version 64 bit from here (the direct download of QGIS 2.2 here);

* Execute the QGIS installer with administrative rights, accepting the default configuration.

Now, QGIS 2 is installed.

.. _scipy_installation_win64bit:
 
SciPy installation
==================

The SciPy package is not included in the 64 bit version of QGIS. Therefore:

* Download SciPy for Windows 64 bit from here (provided by Christoph Gohlke, Laboratory for Fluorescence Dynamics, University of California, Irvine);

* Extract the file scipy-0.13.3.win-amd64-py2.7.exe with 7-zip in a temporary directory;

* Copy all the files contained in the PLATLIB directory inside the QGIS directory, which should be::

	C:\Program Files\QGIS Valmiera\apps\Python27\Lib\site-packages

.. _plugin_installation_win64bit:
 
Semi-Automatic Classification Plugin installation
=================================================

* Run QGIS 2;

* From the main menu, select Plugins > Manage and Install Plugins;
 
* From the All menu, select the Semi-Automatic Classification Plugin and click the button Install plugin;
 
* The plugin should be automatically activated; however, be sure that the Semi-Automatic Classification Plugin and Processing are checked in the Installed menu.

.. _plugin_configuration_win64bit:

Configuration of the Processing plugin
======================================

This configuration is required because SAGA GIS needs to be activated in the Processing framework of QGIS 2.

* Select the menu Processing > Options and configuration; 

* Click the + symbol beside Providers, and click the symbol + beside SAGA;

* SAGA should be already configured. However, verify the following settings:
	#. The checkbox Activate is checked;
	#. Important! Because SAGA 2.0.8 was installed, the checkbox Enable SAGA 2.0.8 compatibility must be checked; if SAGA 2.1.0 was installed then it must be unchecked;
	#. The path in SAGA folder points to::
		
		C:/PROGRA~1/QGISVA~1/apps\saga

Now, the Semi-Automatic Classification Plugin is installed and configured. The plugin is available under the Raster menu of QGIS, or you can click the icon in the main interface (if the raster menu is activated).
		
.. _ubuntu:

Installation in Ubuntu Linux
----------------------------

.. _QGIS_installation_ubuntu:
 
QGIS download and installation
==============================

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

.. _plugin_installation_ubuntu:
 
Semi-Automatic Classification Plugin installation
=================================================

* Run QGIS 2;

* From the main menu, select Plugins > Manage and Install Plugins;

* From the All menu, select the Semi-Automatic Classification Plugin and click the button Install plugin;

* The plugin should be automatically activated; however, be sure that the Semi-Automatic Classification Plugin and Processing are checked in the Installed menu;

.. _plugin_configuration_ubuntu:

Configuration of the Processing plugin
======================================

This configuration is required because SAGA GIS needs to be activated in the Processing framework of QGIS 2.

* Select the menu Processing > Options and configuration; click the + symbol beside Providers;

* Click the + symbol beside Providers, and click the symbol + beside SAGA;
 
* SAGA should be already configured. However, verify the following settings:

	#. The checkbox Activate is checked;
	#. Important! If SAGA 2.0.8 was installed, the checkbox Enable SAGA 2.0.8 compatibility must be checked; if SAGA 2.1.0 was installed then it must be unchecked.

Now, the Semi-Automatic Classification Plugin is installed and configured. The plugin is available under the Raster menu of QGIS, or you can click the icon in the main interface (if the raster menu is activated).

.. _macos:

Installation in Mac OS
----------------------

The program "System for Automated Geoscientific Analyses" (SAGA) version 2.1.0 is unavailable for Mac OS, therefore the Semi-Automatic Classification Plugin for QGIS is unable to run.
It is possible to compile SAGA on Mac OS following the guide here, although this can be problematic.
As a solution, it is possible to use a free virtual machine, which has the required software already installed (see the following chapter).
