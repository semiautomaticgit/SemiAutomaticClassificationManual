.. _settings_tab:
 
******************************
Settings
******************************

.. |registry_save| image:: _static/registry_save.png
    :width: 20pt

.. |input_number| image:: _static/input_number.jpg
    :width: 20pt

.. |settings_tool| image:: _static/semiautomaticclassificationplugin_settings_tool.png
    :width: 20pt

.. |radiobutton| image:: _static/radiobutton.png
    :width: 18pt

The tab |settings_tool| :guilabel:`Settings` allows for the customization
of :guilabel:`SCP`.

The :guilabel:`Simplified interface` is loaded after the first installation of
the plugin.
The :guilabel:`Complete interface` can be loaded from the settings in the
:ref:`SCP_menu`, by deselecting :guilabel:`Simplified interface` and
restarting QGIS.


.. figure:: _static/interface/scp_menu_simplified.png
    :align: center

    :guilabel:`SCP menu with activated option for the simplified interface`


The :guilabel:`Simplified interface` has the following options:

.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - :guilabel:`Available RAM (MB)` |input_number| |registry_save|
      - set the available RAM (in MB) that is used during the processes in
        order to improve the :guilabel:`SCP` performance; this value should be
        half of the system RAM (e.g. 2048MB if system has 4GB of RAM)
    * - :guilabel:`CPU threads` |input_number| |registry_save|
      - set the number of threads available for processing; it is recommended
        to set a value lower than the maximum number of system threads (e.g.
        if the system has 4 available threads set the value 3)
    * - |radiobutton| :guilabel:`Simplified interface` |registry_save|
      - if active, use the :guilabel:`Simplified interface`, otherwise use the
        :guilabel:`Complete interface`


.. toctree::

    debug_tab.rst
    interface_tab.rst
    processing_settings_tab.rst
