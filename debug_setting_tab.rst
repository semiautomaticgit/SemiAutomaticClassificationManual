.. _settings_debug_tab:

******************************
Debug
******************************

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

.. |export| image:: _static/semiautomaticclassificationplugin_export.png
    :width: 20pt

.. |input_number| image:: _static/input_number.jpg
    :width: 20pt

.. |enter| image:: _static/semiautomaticclassificationplugin_enter.png
    :width: 20pt

.. |open_dir| image:: _static/semiautomaticclassificationplugin_open_dir.png
    :width: 20pt

.. figure:: _static/interface/settings_debug_tab.png
    :align: center
    :width: 100%

    :guilabel:`Debug`

This tab allows for the debug of :guilabel:`SCP` in case of issues, and
the check of :guilabel:`SCP` dependencies.

.. _log_file:

Log file
^^^^^^^^^^^^^^^^^^^^^^^^^


.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - :guilabel:`Record detailed events in a Log file` |registry_save|
      - if checked, start recording detailed events in a Log file
    * - |export|
      - export the Log file to a .txt file

.. _test_dependencies:

Test
^^^^^^^^^^^^^^^^^^^^^^^^^


.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - :guilabel:`Test dependencies` |enter|
      - test :guilabel:`SCP` dependencies (NumPy, SciPy, Matplotlib, GDAL,
        PyTorch, scikit-learn, Remotior Sensus, Multiprocess,
        Internet connection)
