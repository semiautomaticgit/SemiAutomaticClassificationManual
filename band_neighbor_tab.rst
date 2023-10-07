.. _band_neighbor_tab:

******************************
Neighbor
******************************

.. contents::
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

.. |input_date| image:: _static/input_date.jpg
    :width: 20pt

.. |input_number| image:: _static/input_number.jpg
    :width: 20pt

.. |input_table| image:: _static/input_table.jpg
    :width: 20pt

.. |open_file| image:: _static/semiautomaticclassificationplugin_open_file.png
    :width: 20pt

.. |new_file| image:: _static/semiautomaticclassificationplugin_new_file.png
    :width: 20pt

.. |add| image:: _static/semiautomaticclassificationplugin_add.png
    :width: 20pt

.. |reset| image:: _static/semiautomaticclassificationplugin_reset.png
    :width: 20pt

.. |bandset_tool| image:: _static/semiautomaticclassificationplugin_bandset_tool.png
    :width: 20pt

.. |download| image:: _static/semiautomaticclassificationplugin_download_arrow.png
    :width: 20pt

.. |export| image:: _static/semiautomaticclassificationplugin_export.png
    :width: 20pt

.. |tools| image:: _static/semiautomaticclassificationplugin_roi_tool.png
    :width: 20pt

.. |preprocessing| image:: _static/semiautomaticclassificationplugin_class_tool.png
    :width: 20pt

.. |band_processing| image:: _static/semiautomaticclassificationplugin_band_processing.png
    :width: 20pt

.. |postprocessing| image:: _static/semiautomaticclassificationplugin_post_process.png
    :width: 20pt

.. |bandcalc| image:: _static/semiautomaticclassificationplugin_bandcalc_tool.png
    :width: 20pt

.. |settings| image:: _static/semiautomaticclassificationplugin_settings_tool.png
    :width: 20pt

.. |script_tool| image:: _static/semiautomaticclassificationplugin_script.png
    :width: 20pt

.. |enter| image:: _static/semiautomaticclassificationplugin_enter.png
    :width: 20pt

.. |zoom_to_ROI| image:: _static/semiautomaticclassificationplugin_zoom_to_ROI.png
    :width: 20pt

.. |check| image:: _static/semiautomaticclassificationplugin_batch_check.png
    :width: 20pt

.. |select_all| image:: _static/semiautomaticclassificationplugin_select_all.png
    :width: 20pt

.. |docks| image:: _static/semiautomaticclassificationplugin_docks.png
    :width: 20pt

.. |add_sign_tool| image:: _static/semiautomaticclassificationplugin_add_sign_tool.png
    :width: 20pt

.. |guide| image:: _static/guide.png
    :width: 20pt

.. |help| image:: _static/help.png
    :width: 20pt

.. |reload| image:: _static/semiautomaticclassificationplugin_reload.png
    :width: 20pt

.. |checkbox| image:: _static/checkbox.png
    :width: 18pt

.. |run| image:: _static/semiautomaticclassificationplugin_run.png
    :width: 24pt

.. |radiobutton| image:: _static/radiobutton.png
    :width: 18pt

.. |pointer| image:: _static/semiautomaticclassificationplugin_pointer_tool.png
    :width: 20pt

.. |threshold_tool| image:: _static/semiautomaticclassificationplugin_threshold_tool.png
    :width: 20pt


.. figure:: _static/interface/neighbor_tab.png
    :align: center
    :width: 100%

    :guilabel:`Neighbor`



This tool allows for the calculation of several neighbor pixels statistics for
every band of a band set defined in the :ref:`band_set_tab`.

The statistics are calculated for every pixel of the input raster considering
the values of the neighbor pixels.
Neighbor pixels are defined through a distance or through a custom matrix.

For example, the following matrix represents the neighbor pixels within a
distance of 1 pixel from a central pixel, resulting in a 3x3 matrix.


+-------------------+--------------------------+------------------------+
| Neighbor          | Neighbor                 | Neighbor               |
+-------------------+--------------------------+------------------------+
| Neighbor          | **Center**               | Neighbor               |
+-------------------+--------------------------+------------------------+
| Neighbor          | Neighbor                 | Neighbor               |
+-------------------+--------------------------+------------------------+

Several statistics are available.
The statistic ``Sum`` will result in a raster convolution.
For instance, this can be useful to apply an image filter to all the bands of a
band set for photointerpretation.


.. tip::
    Information about APIs of this tool in Remotior Sensus at this
    `link <https://remotior-sensus.readthedocs.io/en/latest/remotior_sensus.tools.band_neighbor_pixels.html>`_ .

.. _neighbor_input:

Neighbor
^^^^^^^^^^^^^^^^^^^^^^^^

.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - :guilabel:`Select input band set` |input_number|
      - select the input :ref:`band_set_tab`
    * - :guilabel:`Neighbor distance in pixels` |input_number|
      - create a window defining the size based on the distance from the center
        (in number of pixels)
    * - |checkbox| :guilabel:`Circular` |optional|
      - if checked, the window will be circular
    * - :guilabel:`Matrix file (optional)` |open_file| |optional|
      - select a ``.csv`` file containing the structure of the window
    * - :guilabel:`Output name`
      - set the name prefix for output files
    * - |checkbox| :guilabel:`Virtual output` |optional|
      - if checked, the output is created as virtual raster composed of as
        many ``.tif`` files as the number of CPU threads defined in
        :ref:`system_processing`

.. _statistic_neighbor:

Statistic
^^^^^^^^^^^^^^^^^^^^^^^^



.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - :guilabel:`Select a statistic` |input_list| |input_text|
      - select a statistic among: Count, Max, Mean, Median, Min, Percentile,
        StandardDeviation, Sum. For Percentile statistic it is possible to
        enter the percentile value.


.. _run_neighbor:

Run
^^^^^^^^^^^^^^^^^^^^^^^^

    * - :guilabel:`Script` |script_tool|
      - add this function to the :ref:`script_tab`
    * - :guilabel:`RUN` |run|
      - run this function
