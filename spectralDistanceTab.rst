.. _spectral_distance_tab:

******************************
Spectral distance
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
	
.. |input_date| image:: _static/input_date.jpg
	:width: 20pt
	
.. |input_number| image:: _static/input_number.jpg
	:width: 20pt
	
.. |input_slider| image:: _static/input_slider.jpg
	:width: 20pt
	
.. |input_table| image:: _static/input_table.jpg
	:width: 20pt
	
.. |add| image:: _static/semiautomaticclassificationplugin_add.png
	:width: 20pt
	
.. |checkbox| image:: _static/checkbox.png
	:width: 18pt
	
.. |pointer| image:: _static/semiautomaticclassificationplugin_pointer_tool.png
	:width: 20pt
	
.. |radiobutton| image:: _static/radiobutton.png
	:width: 18pt

.. |batch_tool| image:: _static/semiautomaticclassificationplugin_batch.png
	:width: 20pt
	
.. |run| image:: _static/semiautomaticclassificationplugin_run.png
	:width: 24pt
	
.. |spectral_distance| image:: _static/semiautomaticclassificationplugin_spectral_distance.png
	:width: 20pt

.. figure:: _static/spectral_distance_tab.jpg
	:align: center
	:width: 500pt
	
	|spectral_distance| :guilabel:`Spectral distance`

This tab allows for calculating the spectral distance between every corresponding pixel of two :guilabel:`band sets`.
The output is a raster containing the spectral distance of each pixel.
Optionally, a threshold can be defined for creating a binary raster (0-1) of values below and above the threshold.

This tool supports ``virtual raster output``; if the output file name ends with ``.vrt`` then the output is created as virtual raster composed of as many ``.tif`` files as the number of CPU threads defined in :ref:`system_processing`; for large rasters this can speed up the process.

.. _spectral_distance_input:

Spectral distance of band sets
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* :guilabel:`Select first input band set` |input_number|: select the first input :ref:`band_set_tab`;
* :guilabel:`Select second input band set` |input_number|: select the second input :ref:`band_set_tab`;
* :guilabel:`Distance algorithm` |radiobutton| :guilabel:`Minimum Distance` |radiobutton| :guilabel:`Spectral Angle Mapping`: select :ref:`minimum_distance_algorithm` or * :ref:`spectra_angle_mapping_algorithm` for spectral distance calculation;
* |checkbox| :guilabel:`Distance threshold` |input_number|: if checked, a binary raster of values below and above the threshold is created;
	
* :guilabel:`BATCH` |batch_tool|: add this function to the :ref:`batch_tab`;
* :guilabel:`RUN` |run|: choose the output destination and start the calculation;
