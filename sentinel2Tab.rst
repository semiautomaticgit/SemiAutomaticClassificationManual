.. _sentinel2_tab:

******************************
Sentinel-2
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
	
.. |select_all| image:: _static/semiautomaticclassificationplugin_select_all.png
	:width: 20pt
	
.. |import| image:: _static/semiautomaticclassificationplugin_import.png
	:width: 20pt
	
.. |export| image:: _static/semiautomaticclassificationplugin_export.png
	:width: 20pt

.. |sentinel2_tool| image:: _static/semiautomaticclassificationplugin_sentinel_tool.png
	:width: 20pt

.. |batch_tool| image:: _static/semiautomaticclassificationplugin_batch.png
	:width: 20pt
	
.. figure:: _static/sentinel2_tab.jpg
	:align: center
	:width: 500pt
	
	|sentinel2_tool|  :guilabel:`Sentinel-2`
	
This tab allows for the conversion of **Sentinel-2** images Level-1C to the physical measure of Top Of Atmosphere reflectance (TOA), or the application of a simple atmospheric correction using the DOS1 method (Dark Object Subtraction 1), which is an image-based technique (for more information about conversion to TOA and DOS1 correction, see :ref:`conversion_to_reflectance`).
This tool can also convert **Sentinel-2** images Level-2A from DN to reflectance values.

Once the input is selected, available bands are listed in the metadata table.
Bands with 20m spatial resolution are resampled to 10m resolution without changing the original pixel value (i.e. one 20m pixel is divided in four 10m pixels with the same value).
To reduce file size, output files are saved as data type UInt16 with scale 0.0001, which are interpreted as Float32 type by GDAL.

	**WARNING**: For the best spectral precision you should download the Sentinel-2 Level-2A Products (Surface Reflectance) or use the official SNAP tool for atmospheric correction (see http://step.esa.int).

.. _sentinel2_conversion:

Sentinel-2 conversion
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* :guilabel:`Directory containing Sentinel-2 bands` |open_dir|: open a directory containing Sentinel-2 bands; names of Sentinel-2 bands must end with the corresponding number; if the metadata file is included in this directory then :ref:`sentinel2_metadata` are automatically filled;
* :guilabel:`Select metadata file` |open_file| |optional|: select the metadata file which is a .xml file whose name contains ``MTD_MSIL1C``); this is optional and can be generally ignored;
* |checkbox| :guilabel:`Apply DOS1 atmospheric correction`: if checked, the :ref:`DOS1_correction` is applied to all the bands;
* |checkbox| :guilabel:`Use value as  NoData` |input_number|: if checked, pixels having ``NoData`` value are not counted during conversion and the DOS1 calculation of DNmin; it is useful when image has a black border (usually pixel value = 0);
* |checkbox| :guilabel:`Preprocess bands 1, 9, 10`: if checked, preprocess also bands 1, 9, 10 (i.e. 60m bands);
* |checkbox| :guilabel:`Create Band set and use Band set tools`: if checked, bands are added to the active :guilabel:`Band set` after the conversion; also, the :guilabel:`Band set` is processed according to the tools checked in the :ref:`band_set_tab`;
* |checkbox| :guilabel:`Add bands in a new Band set`: if checked, bands are added to a new empty :guilabel:`Band set` after the conversion;

	**TIP**: in order to convert L2A images you should move all the .jp2 files inside the same directory and rename the files with the band number in the ending of the name (e.g. from name_02_10m.jp2 to name_02.jp2).

.. _sentinel2_metadata:

Metadata
^^^^^^^^^^^^^^^^^

All the bands found in the :guilabel:`Directory containing Sentinel-2 bands` are listed in the table :guilabel:`Metadata`.
If the Sentinel-2 metadata file (a .xml file whose name contains ``MTD_MSIL1C``) is provided, then :guilabel:`Metadata` are automatically filled.
For information about :guilabel:`Metadata` fields read `this informative page <https://sentinel.esa.int/web/sentinel/user-guides/sentinel-2-msi/data-formats>`_ .

* :guilabel:`Satellite` |input_text|: satellite name (e.g. Sentinel-2A);
* |remove|: remove highlighted bands from the table :guilabel:`Metadata`;

* |input_table| :guilabel:`Metadata`: table containing the following fields;
	* :guilabel:`Band`: band name;
	* :guilabel:`Quantification value`: value for conversion to TOA reflectance;
	* :guilabel:`Solar irradiance`: solar irradiance of band;

* :guilabel:`BATCH` |batch_tool|: add this function to the :ref:`batch_tab`;
* :guilabel:`RUN` |run|: select an output directory and start the conversion process; only bands listed in the table :guilabel:`Metadata` are converted; converted bands are saved in the output directory with the prefix ``RT_`` and automatically loaded in QGIS;
	
