.. _installation_debian:

******************************************
Linux Debian/Ubuntu
******************************************


.. _QGIS_installation_debian:
 
QGIS download and installation
------------------------------------------

This guide describes the installation for Debian/Ubuntu Linux.
For other Linux distributions please follow :ref:`installation_conda`.

* Open a terminal and type:

.. code-block:: bash

    sudo apt-get update

* Press Enter and type the user password;

* Type in a terminal:

.. code-block:: bash

    sudo apt-get install qgis python3-matplotlib python3-scipy

* Press Enter and wait until the software is downloaded and installed.

Now, QGIS is installed.

.. image:: _static/installation/QGIS.jpg


.. _installation_dependencies_debian:

Installation of required dependencies
-------------------------------------------------

The Semi-Automatic Classification Plugin requires Remotior Sensus, GDAL, NumPy
and SciPy for most functionalities.
Optionally, scikit-learn and PyTorch are required for machine learning.

Therefore, we need to install the dependencies that are not included in
the QGIS installation.


* Close QGIS;

* Open the terminal (administrative rights may be required);

* Enter the following command:

.. code-block:: bash

    pip3 install --upgrade remotior-sensus

or optionally:

.. code-block:: bash

    pip3 install --upgrade remotior-sensus scikit-learn torch

.. warning::
    In case you get an error message related to externally managed environment,
    you may use (at the risk of breaking the OS or the Python installation)
    the option ``--break-system-packages``; alternatively, it is possible to
    create a virtual environment ``python3 -m venv env``, install the packages
    in it, and start QGIS from the activated environment.


Follow the same procedure for updating the dependencies.


.. tip::
    In case of installation issues, one may follow the
    :ref:`plugin_installation_4`.


.. _plugin_installation_debian:

Semi-Automatic Classification Plugin installation
---------------------------------------------------

* Run QGIS;

* From the main menu, select ``Plugins`` > ``Manage and Install Plugins``;

.. image:: _static/installation/install.jpg

* From the menu ``All``, select the Semi-Automatic Classification Plugin and
  click the button ``Install plugin``;


.. image:: _static/installation/plugins.jpg

* The SCP should be automatically activated; however, be sure that the
  Semi-Automatic Classification Plugin is checked in the menu ``Installed``
  (the restart of QGIS could be necessary to complete the SCP installation);

.. image:: _static/installation/plugins_installed.jpg


.. _plugin_configuration_debian:

Configuration of the plugin
---------------------------

Now, the Semi-Automatic Classification Plugin is installed and a dock and
a toolbar should be added to QGIS.
Also, a SCP menu is available in the Menu Bar of QGIS.
It is possible to move the toolbar and the dock according to your needs,
as in the following image.

.. image:: _static/installation/SemiAutomaticClassificationPlugin.jpg


.. |settings_tool| image:: _static/semiautomaticclassificationplugin_settings_tool.png
    :width: 20pt

The configuration of available RAM is recommended in order to reduce
the processing time.
From the :ref:`SCP_menu` select |settings_tool| ``Settings > Processing`` .

.. image:: _static/installation/settings_processing.jpg

In the :ref:`settings_tab`, set the ``Available RAM (MB)`` to a value that
should be half of the system RAM.
For instance, if your system has 2GB of RAM, set the value to 1024MB.

.. image:: _static/interface/settings_processing_tab.png

.. _installation_update_debian:

Update of required dependencies
-------------------------------------------------

The dependency Remotior Sensus is frequently updated.
The Semi-Automatic Classification Plugin can check automatically if a new
version is available, and display a message in the :ref:`scp_dock`.


.. image:: _static/installation/remotior_sensus_update.png

It is recommended to close QGIS and update Remotior Sensus following the same
installation steps described in :ref:`installation_dependencies_debian` .
