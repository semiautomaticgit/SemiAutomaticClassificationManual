.. _landsat_tab:

******************************
Landsat
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
	
.. |move_up| image:: _static/semiautomaticclassificationplugin_move_up.png
	:width: 20pt
	
.. |landsat_tool| image:: _static/semiautomaticclassificationplugin_landsat8_tool.png
	:width: 20pt
	
.. |batch_tool| image:: _static/semiautomaticclassificationplugin_batch.png
	:width: 20pt


.. figure:: _static/landsat_tab.jpg
	:align: center
	:width: 500pt
	
	|landsat_tool| :guilabel:`Landsat`
	
This tab allows for the conversion of **Landsat 1, 2, and 3 MSS** and **Landsat 4, 5, 7, and 8** images from DN (i.e. Digital Numbers) to the physical measure of Top Of Atmosphere reflectance (TOA), or the application of a simple atmospheric correction using the DOS1 method (Dark Object Subtraction 1), which is an image-based technique (for more information about the Landsat conversion to TOA and DOS1 correction, see :ref:`conversion_to_reflectance`).

Once the input is selected, available bands are listed in the metadata table.

To reduce file size, output files are saved as data type UInt16 with scale 0.0001, which are interpreted as Float32 type by GDAL.

Pan-sharpening is also available; for more information read :ref:`pan_sharpening_definition`.
The panchromatic band is preprocessed only if pansharpening is checked.

	**WARNING**: For the best spectral precision you should download the Landsat Level-2 Data Products (Surface Reflectance) from https://earthexplorer.usgs.gov .

.. _landsat_conversion:

Landsat conversion to TOA reflectance and brightness temperature
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* :guilabel:`Directory containing Landsat bands` |open_dir|: open a directory containing Landsat bands; names of Landsat bands must end with the corresponding number; if the metadata file is included in this directory then :ref:`landsat_metadata` are automatically filled;
* :guilabel:`Select MTL file` |open_file| |optional|: if the metadata file is not included in the :guilabel:`Directory containing Landsat bands`, select the path of the metadata file in order to fill the :ref:`landsat_metadata` automatically;
* |checkbox| :guilabel:`Brightness temperature in Celsius`: if checked, convert brightness temperature to Celsius (if a Landsat thermal band is listed in :ref:`landsat_metadata`); if unchecked temperature is in Kelvin;
* |checkbox| :guilabel:`Apply DOS1 atmospheric correction`: if checked, the :ref:`DOS1_correction` is applied to all the bands (thermal bands excluded);
* |checkbox| :guilabel:`Use value as  NoData` |input_number|: if checked, pixels having ``NoData`` value are not counted during conversion and the DOS1 calculation of DNmin; it is useful when image has a black border (usually pixel value = 0);
* |checkbox| :guilabel:`Perform pan-sharpening`: if checked, a Brovey Transform is applied for the :ref:`pan_sharpening_definition` of Landsat bands;
* |checkbox| :guilabel:`Create Band set and use Band set tools`: if checked, bands are added to the active :guilabel:`Band set` after the conversion; also, the :guilabel:`Band set` is processed according to the tools checked in the :ref:`band_set_tab`;
* |checkbox| :guilabel:`Add bands in a new Band set`: if checked, bands are added to a new empty :guilabel:`Band set` after the conversion;

.. _landsat_metadata:

Metadata
^^^^^^^^^^^^^^^^^

All the bands found in the :guilabel:`Directory containing Landsat bands` are listed in the table :guilabel:`Metadata`.
If the Landsat metadata file (a .txt or .met file with the suffix MTL) is provided, then :guilabel:`Metadata` are automatically filled.
For information about :guilabel:`Metadata` fields read `this page <http://landsat.usgs.gov/Landsat8_Using_Product.php>`_  and `this one <http://landsat.usgs.gov/how_is_radiance_calculated.php>`_ .

* :guilabel:`Satellite` |input_text|: satellite name (e.g. Landsat8);
* :guilabel:`Date` |input_text|: date of acquisition (e.g. 2013-04-15);
* :guilabel:`Sun elevation` |input_number|: Sun elevation in degrees;
* :guilabel:`Earth sun distance` |input_number|: Earth Sun distance in astronomical units (automatically calculated if :guilabel:`Date` is filled;
* |remove|: remove highlighted bands from the table :guilabel:`Metadata`;

* |input_table| :guilabel:`Metadata`: table containing the following fields;
	* :guilabel:`Band`: band name;
	* :guilabel:`RADIANCE_MULT`: multiplicative rescaling factor;
	* :guilabel:`RADIANCE_ADD`: additive rescaling factor;
	* :guilabel:`REFLECTANCE_MULT`: multiplicative rescaling factor;
	* :guilabel:`REFLECTANCE_ADD`: additive rescaling factor;
	* :guilabel:`RADIANCE_MAXIMUM`: radiance maximum;
	* :guilabel:`REFLECTANCE_MAXIMUM`: reflectance maximum;
	* :guilabel:`K1_CONSTANT`: thermal conversion constant;
	* :guilabel:`K2_CONSTANT`: thermal conversion constant;
	* :guilabel:`LMAX`: spectral radiance that is scaled to QCALMAX;
	* :guilabel:`LMIN`: spectral radiance that is scaled to QCALMIN;
	* :guilabel:`QCALMAX`: minimum quantized calibrated pixel value;
	* :guilabel:`QCALMIN`: maximum quantized calibrated pixel value;

	
* :guilabel:`BATCH` |batch_tool|: add this function to the :ref:`batch_tab`;
* :guilabel:`RUN` |run|: select an output directory and start the conversion process; only bands listed in the table :guilabel:`Metadata` are converted; converted bands are saved in the output directory with the prefix ``RT_`` and automatically loaded in QGIS;
