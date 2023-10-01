.. _installation_conda:

***************************************
Advanced installation using Conda
***************************************


.. _QGIS_installation_conda:
 
QGIS download and installation with the dependencies
------------------------------------------------------

The Semi-Automatic Classification Plugin requires Remotior Sensus, GDAL, NumPy
and SciPy for most functionalities.

QGIS and the dependencies can be installed using
a `Conda` environment (if you don't know `Conda` please read
https://conda-forge.org/docs).
For instance, you can use
`Miniforge <https://github.com/conda-forge/miniforge>`_
to create a `Conda` environment.

Once installed conda, open the terminal and run the following commands to
create a new environment:

.. code-block:: console

    $ conda create -c conda-forge --name environment python=3.10
    Proceed ([y]/n)? y
    $ conda activate environment

Now install QGIS and the dependencies (it could take some time):

.. code-block:: console

    $ conda install -c conda-forge qgis gdal remotior-sensus scikit-learn pytorch


Now, QGIS is installed. To launch it run in the terminal:


.. code-block:: console

    $ qgis



.. image:: _static/installation/QGIS.jpg


.. _plugin_installation_conda:

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


.. _plugin_configuration_conda:

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

.. _installation_update_conda:

Update of required dependencies
-------------------------------------------------

The dependency Remotior Sensus is frequently updated.
The Semi-Automatic Classification Plugin can check automatically if a new
version is available, and display a message in the :ref:`scp_dock`.


.. image:: _static/installation/remotior_sensus_update.png


It is recommended to close QGIS and update Remotior Sensus using activating
the conda environment and running the command:


.. code-block:: console

    $ conda update -c conda-forge remotior-sensus
