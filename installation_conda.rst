.. _installation_conda:

***************************************
Cross-platform installation using Conda
***************************************


.. _QGIS_installation_conda:
 
QGIS download and installation with the dependencies
------------------------------------------------------

QGIS and the dependencies can be installed in
a `Conda` environment using `Mamba`, which is a cross-platform package manager
(if you don't know `Mamba` please read https://mamba.readthedocs.io).

First, install `Miniforge <https://github.com/conda-forge/miniforge>`_
to create a `Conda` environment.
Once installed, open the terminal and run the following commands to
create a new environment:

.. code-block:: console

    $ mamba create -c conda-forge --name environment python=3.10
    Proceed ([y]/n)? y
    $ mamba activate environment

Now install QGIS and the dependencies (it could take some time):

.. code-block:: console

    $ mamba install -c conda-forge qgis gdal scikit-learn scipy torch torchvision

Now, QGIS is installed. To launch it run in the terminal:

.. code-block:: console

    $ mamba activate environment
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
