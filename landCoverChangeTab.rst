.. _land_cover_change_tab:

******************************
Land cover change 
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
	
.. |reload| image:: _static/semiautomaticclassificationplugin_reload.png
	:width: 20pt
	
.. |reset| image:: _static/semiautomaticclassificationplugin_reset.png
	:width: 20pt
	
.. |remove| image:: _static/semiautomaticclassificationplugin_remove.png
	:width: 20pt
	
.. |run| image:: _static/semiautomaticclassificationplugin_run.png
	:width: 24pt
	
.. |open_file| image:: _static/semiautomaticclassificationplugin_open_file.png
	:width: 20pt
	
.. |new_file| image:: _static/semiautomaticclassificationplugin_new_file.png
	:width: 20pt
	
.. |open_dir| image:: _static/semiautomaticclassificationplugin_open_dir.png
	:width: 20pt

.. |post_process| image:: _static/semiautomaticclassificationplugin_post_process.png
	:width: 20pt
	
.. |batch_tool| image:: _static/semiautomaticclassificationplugin_batch.png
	:width: 20pt
	
.. |land_cover_change| image:: _static/semiautomaticclassificationplugin_land_cover_change.png
	:width: 20pt

.. figure:: _static/land_cover_change_tab.jpg
	:align: center
	:width: 500pt
	
	|land_cover_change| :guilabel:`Land cover change`
	
The tab ``Land cover change`` allows for the comparison between two classifications in order to assess land cover changes.

Output is a ``land cover change raster`` (i.e. a file .tif showing the changes in the map, where each pixel represents a category of comparison (i.e. combinations) between the two classifications, which is the ``ChangeCode`` in the land cover change statistics) and a text file containing the land cover change statistics (i.e. a file .csv separated by tab, with the same name defined for the .tif file).

This tool supports ``virtual raster output``; if the output file name ends with ``.vrt`` then the output is created as virtual raster composed of as many ``.tif`` files as the number of CPU threads defined in :ref:`system_processing`; for large rasters this can speed up the process.

.. _classification_input:

Input
^^^^^^^^^^^^^^^^^^^^

* :guilabel:`Select the reference classification` |input_list|: select a reference classification raster (already loaded in QGIS);
* |reload|: refresh layer list;
* :guilabel:`Select the new classification` |input_list|: select a new classification raster (already loaded in QGIS), to be compared with the reference classification;
* |reload|: refresh layer list;
* |checkbox| :guilabel:`Report unchanged pixels`: if checked, report also unchanged pixels (having the same value in both classifications);
	
* :guilabel:`BATCH` |batch_tool|: add this function to the :ref:`batch_tab`;
* :guilabel:`RUN` |run|: choose the output destination and start the calculation; the land cover change statistics are displayed in the tab :guilabel:`Output` (and saved in a text file) and the ``land cover change raster`` is loaded in QGIS;
