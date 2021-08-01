.. _band_combination_tab:

******************************
Band combination
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
	
.. |band_combination| image:: _static/semiautomaticclassificationplugin_band_combination_tool.png
	:width: 20pt

.. |batch_tool| image:: _static/semiautomaticclassificationplugin_batch.png
	:width: 20pt
	
.. |run| image:: _static/semiautomaticclassificationplugin_run.png
	:width: 24pt

.. figure:: _static/band_combination_tab.jpg
	:align: center
	:width: 500pt
	
	|band_combination| :guilabel:`Band combination`

This tab allows for the combination of bands loaded in a :ref:`band_set_tab`.
This tool is intended for combining classifications in order to get a raster where each value corresponds to a combination of class values.
Raster values must be integer type.
A combination raster is produced as output and the area of each combination is reported in an text file. 

This tool supports ``virtual raster output``; if the output file name ends with ``.vrt`` then the output is created as virtual raster composed of as many ``.tif`` files as the number of CPU threads defined in :ref:`system_processing`; for large rasters this can speed up the process.

.. _band_combination_input:

Combination of band values
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* :guilabel:`Select input band set (of classifications)` |input_number|: select the input :ref:`band_set_tab`;

* :guilabel:`BATCH` |batch_tool|: add this function to the :ref:`batch_tab`;
* :guilabel:`RUN` |run|: choose the output destination and start the calculation; also, the details about the combinations are displayed in the tab :guilabel:`Output` and saved in a .txt file in the output directory;
