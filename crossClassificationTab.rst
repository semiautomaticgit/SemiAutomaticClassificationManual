.. _cross_classification_tab:

******************************
Cross classification
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
	
.. |report_tool| image:: _static/semiautomaticclassificationplugin_report_tool.png
	:width: 20pt

.. |cross_classification| image:: _static/semiautomaticclassificationplugin_cross_classification.png
	:width: 20pt

.. figure:: _static/cross_classification_tab.jpg
	:align: center
	:width: 500pt
	
	|cross_classification| :guilabel:`Cross classification`
	

This tab allows for the calculation of a cross classification raster and matrix. 
Classification is compared to a reference raster or reference vector (which is automatically converted to raster).
This is useful for calculating the area for every combination between reference classes and classification values.
If a vector is selected as reference, it is possible to choose a field describing class values.

The output is a ``cross raster`` that is a ``.tif`` file where pixel values represent the categories of comparison (i.e. combinations identified by the ``CrossMatrixCode``) between the classification and reference.
Also, a text file containing the cross matrix (i.e. a ``.csv`` file separated by tab) is created with the same name defined for the ``.tif`` file.

This tool supports ``virtual raster output``; if the output file name ends with ``.vrt`` then the output is created as virtual raster composed of as many ``.tif`` files as the number of CPU threads defined in :ref:`system_processing`; for large rasters this can speed up the process.

.. _cross_matrix_input:

Input
^^^^^^^^^^^^^^^^^^

* :guilabel:`Select the classification` |input_list|: select a classification raster (already loaded in QGIS);
* |reload|: refresh layer list;
* |checkbox| :guilabel:`Use value as  NoData` |input_number|: if checked, ``NoData`` value will be excluded from the calculation;
* :guilabel:`Select the reference vector or raster` |input_list|: select a raster or a vector (already loaded in QGIS), used as reference layer;
* |reload|: refresh layer list;
* :guilabel:`Vector field` |input_list|: if a vector is selected as reference, select a vector field containing numeric class values;


* :guilabel:`BATCH` |batch_tool|: add this function to the :ref:`batch_tab`;
* :guilabel:`RUN` |run|: choose the output destination and start the calculation; the cross matrix is displayed in the tab :guilabel:`Output` and the ``cross raster`` is loaded in QGIS;
