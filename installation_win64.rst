.. _installation_win64:

*******************************
Windows
*******************************


.. _QGIS_installation_win64bit:
 
QGIS download and installation
------------------------------------------

* Download the latest QGIS version 64 bit from
  `here <https://www.qgis.org/download/#windows>`_ ;

* Execute the QGIS installer with administrative rights, accepting the
  default configuration.

Now, QGIS is installed.

.. image:: _static/installation/QGIS.jpg


.. _installation_dependencies_win64bit:

Installation of required dependencies
-------------------------------------------------

The Semi-Automatic Classification Plugin requires Remotior Sensus, GDAL, NumPy
and SciPy for most functionalities.
Optionally, scikit-learn and PyTorch are required for machine learning.

Therefore, we need to install the dependencies that are not included in
the QGIS installation.


* Close QGIS;

* From the Start menu, open OSGeo4W Shell (administrative rights may be required);

.. image:: _static/installation/osgeo4w_shell.jpg

* Enter the following command:

.. code-block:: shell

    pip3 install --upgrade remotior-sensus scikit-learn torch


Follow the same procedure for updating the dependencies.


.. tip::
    In case the library Remotior Sensus is not found, an automatic procedure
    will try to download it in the plugin directory, allowing for using the
    main functions of the Semi-Automatic Classification Plugin; however,
    this is not recommended as library Remotior Sensus won't be updated, and
    scikit-learn and PyTorch functions will not work.
    Alternatively, one may follow :ref:`installation_conda`.


.. _plugin_installation_win64bit:
 
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


.. _plugin_configuration_win64bit:

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


.. _installation_update_win64bit:

Update of required dependencies
-------------------------------------------------

The dependency Remotior Sensus is frequently updated.
The Semi-Automatic Classification Plugin can check automatically if a new
version is available, and display a message in the :ref:`scp_dock`.


.. image:: _static/installation/remotior_sensus_update.png

It is recommended to close QGIS and update Remotior Sensus following the same
installation steps described in :ref:`installation_dependencies_win64bit` .