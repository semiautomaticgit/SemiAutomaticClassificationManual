.. _settings_processing_tab:

********************************************
Processing setting (complete interface)
********************************************

.. contents::
    :depth: 2
    :local:

.. |registry_save| image:: _static/registry_save.png
    :width: 20pt

.. |project_save| image:: _static/project_save.png
    :width: 20pt

.. |optional| image:: _static/optional.png
    :width: 20pt

.. |input_list| image:: _static/input_list.jpg
    :width: 20pt

.. |input_text| image:: _static/input_text.jpg
    :width: 20pt

.. |checkbox| image:: _static/checkbox.png
    :width: 18pt

.. |reset| image:: _static/semiautomaticclassificationplugin_reset.png
    :width: 20pt

.. |input_number| image:: _static/input_number.jpg
    :width: 20pt

.. |open_dir| image:: _static/semiautomaticclassificationplugin_open_dir.png
    :width: 20pt

.. figure:: _static/interface/settings_processing_tab.png
    :align: center
    :width: 100%

    :guilabel:`Processing`


It is loaded only if the :guilabel:`Simplified interface` is not enabled.

.. _system_processing:

System
^^^^^^^^^^^^^^^^^^^^^^^^^


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


.. _calculation_process:

Calculation process
^^^^^^^^^^^^^^^^^^^^^^^^^

.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - |checkbox| :guilabel:`Play sound when finished` |registry_save|
      - if checked, play a sound when the process is completed
    * - |checkbox| :guilabel:`Raster compression` |registry_save|
      - if checked, a lossless compression (DEFLATE or PACKBITS) is applied to
        raster outputs in order to save disk space; it is recommended to check
        this option to save disk space, or uncheck to faster the calculation

.. _smtp_notification:

SMTP process notification
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - :guilabel:`SMTP server` |input_text| |registry_save|
      - the SMTP server to login for sending a notification email when all the
        :guilabel:`SCP` processes are finished (a notification is sent also in
        case of error, but not in case of crash)
    * - :guilabel:`user` |input_text| |registry_save|
      - the SMTP server user
    * - :guilabel:`password` |input_text| |registry_save|
      - the SMTP server password
    * - :guilabel:`Send email of completed process to` |input_text| |registry_save|
      - a list of addresses (separated by comma) to send the notification
        email to

.. warning::
    If |checkbox| :guilabel:`remember` is checked, the password is stored
    unencrypted in QGIS registry.

.. _temporary_directory:

Temporary directory
^^^^^^^^^^^^^^^^^^^^^^

.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - |open_dir| |registry_save|
      - select a new temporary directory where temporary files are saved
        during the processing; the path to the current temporary directory is
        displayed; default is a system temporary directory
    * - |reset|
      - reset to default temporary directory

.. _external_programs:

External programs
^^^^^^^^^^^^^^^^^^

This option is deprecated.
Some tools require external programs to perform the processing.

.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - :guilabel:`GDAL installation directory` |input_text| |registry_save| |optional|
      - enter the path to the GDAL directory containing tools such as
        gdal_translate and gdalwarp (e.g. ``/usr/bin``); this parameter is
        usually not required
