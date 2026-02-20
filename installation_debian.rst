.. _installation_debian:

******************************************
Linux Debian/Ubuntu
******************************************


.. _QGIS_installation_debian:
 
QGIS download and installation
------------------------------------------

It is recomended to follow the
`QGIS guide <https://qgis.org/resources/installation-guide/#debian--ubuntu>`_ .

For other Linux distributions please follow
`QGIS Linux <https://qgis.org/resources/installation-guide/#debian--ubuntu>`_
or :ref:`installation_conda`.

This guide describes the installation for Debian/Ubuntu Linux.

* Open a terminal and type:

.. code-block:: bash

    sudo apt-get update

* Press Enter and type the user password;

* Type in a terminal:

.. code-block:: bash

    sudo apt-get install qgis

* Press Enter and wait until the software is downloaded and installed.

Now, QGIS is installed.

.. image:: _static/installation/QGIS.jpg


.. _installation_dependencies_debian:

Installation of required dependencies
-------------------------------------------------

The Semi-Automatic Classification Plugin requires Remotior Sensus, GDAL, NumPy
and SciPy for the main functionalities.
Optionally, scikit-learn and PyTorch are required for machine learning and
additional functionalities.

The Semi-Automatic Classification Plugin can automatically download and
install Remotior Sensus.
Therefore, it is recommended install the dependencies that are not included in
the QGIS installation.


* Close QGIS;

* Open the terminal (administrative rights may be required);

* Enter the following command:

.. code-block:: bash

    pip3 install scikit-learn scipy torch torchvision --index-url https://download.pytorch.org/whl/cpu


.. tip::
    If the system has GPU support please refer to the PyTorch
    documentation for installation  https://pytorch.org/get-started/locally/


.. warning::
    In case you get an error message related to externally managed environment,
    you may use (at the risk of breaking the OS or the Python installation)
    the option ``--break-system-packages``; alternatively, it is possible to
    create a virtual environment ``python3 -m venv env``, install the packages
    in it, and start QGIS from the activated environment.


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

Now, the Semi-Automatic Classification Plugin is installed.

A :guilabel:`Simplified interface` is loaded after the first installation of
the plugin.
It is especially designed for new users in order to ease the classification
process, from the definition of input images to executing the classification
algorithm.
Also, a SCP menu is available in the Menu Bar of QGIS.
It is possible to move the dock according to your needs,
as in the following image.

.. image:: _static/installation/SemiAutomaticClassificationPlugin.jpg


.. |settings_tool| image:: _static/semiautomaticclassificationplugin_settings_tool.png
    :width: 20pt

The configuration of available RAM is recommended in order to reduce
the processing time.
From the :ref:`SCP_menu` select |settings_tool| ``Settings`` .

.. image:: _static/interface/scp_menu_simplified.png

In the :ref:`settings_tab`, set the ``Available RAM (MB)`` to a value that
should be half of the system RAM.
For instance, if your system has 4GB of RAM, set the value to 2048MB.

The :guilabel:`Complete interface` can be loaded from the settings in the
:ref:`SCP_menu`, by deselecting :guilabel:`Simplified interface` and
restarting QGIS.
