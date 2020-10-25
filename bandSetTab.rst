.. _band_set_tab:

******************************
Band set
******************************

.. contents::
    :depth: 2
    :local:
	
.. |project_save| image:: _static/project_save.png
	:width: 20pt
	
.. |optional| image:: _static/optional.png
	:width: 20pt
	
.. |input_list| image:: _static/input_list.jpg
	:width: 20pt
	
.. |input_table| image:: _static/input_table.jpg
	:width: 20pt
	
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

.. |order_by_name| image:: _static/semiautomaticclassificationplugin_order_by_name.png
	:width: 20pt
	
.. |open_dir| image:: _static/semiautomaticclassificationplugin_open_dir.png
	:width: 20pt
	
.. |select_all| image:: _static/semiautomaticclassificationplugin_select_all.png
	:width: 20pt
	
.. |move_up| image:: _static/semiautomaticclassificationplugin_move_up.png
	:width: 20pt
	
.. |add_bandset| image:: _static/semiautomaticclassificationplugin_add_bandset_tool.png
	:width: 20pt
	
.. |move_down| image:: _static/semiautomaticclassificationplugin_move_down.png
	:width: 20pt

.. |import| image:: _static/semiautomaticclassificationplugin_import.png
	:width: 20pt
	
.. |export| image:: _static/semiautomaticclassificationplugin_export.png
	:width: 20pt

.. |plus| image:: _static/semiautomaticclassificationplugin_plus.png
	:width: 20pt

.. |bandset_tool| image:: _static/semiautomaticclassificationplugin_bandset_tool.png
	:width: 20pt
	
.. |close_bandset| image:: _static/close_bandset.jpg
	:width: 20pt
	
.. |input_text| image:: _static/input_text.jpg
	:width: 20pt
	
.. |input_date| image:: _static/input_date.jpg
	:width: 20pt
	


.. figure:: _static/band_set_tab.jpg
	:align: center
	:width: 500pt
	
	|bandset_tool| :guilabel:`Band set`
	
Image input in :guilabel:`SCP` is named :guilabel:`band set`.
This tab allows for the definition of one or more :guilabel:`band sets` used as input for classification and other tools.

:guilabel:`Band sets` are identified by numbers.
The :guilabel:`active band set` (i.e. the tab selected in :ref:`band_set_definition` with bold green name) is used as input for the tools in :ref:`SCP_dock` and :ref:`working_toolbar`.
Other :guilabel:`SCP` tools allow for the selection of :guilabel:`band set` numbers.

The :guilabel:`Band set` definition is saved with the QGIS project.

The tool :ref:`band_set_list_tab` allows for the management of :guilabel:`band sets`.

.. _input_image:
 
Multiband image list
----------------------------------------

This section allows for the selection of a multiband raster.
If selected, raster bands are listed in the :guilabel:`active band set`.
	
* |input_list| : select the input image from a list of multispectral images loaded in QGIS;
* |open_file|: open one or more raster files that are added to the :guilabel:`active band set` and loaded in QGIS;
* |reload|: refresh layer list;
	
.. _band_list:

Single band list
-------------------

List of single band rasters already loaded in QGIS.
It is possible to select one or more bands to be added to the :guilabel:`active band set`.

* :guilabel:`Filter` |input_text|: filter the list;
* |reload|: refresh list of raster bands loaded in QGIS;
* |select_all|: select all raster bands;
* |plus|: add selected rasters to the :guilabel:`active band set`.

.. _band_set_definition:

Band set definition
---------------------

Definition of bands composing the :guilabel:`band sets` .
The :guilabel:`active band set` is the tab selected with bold green name.
It is possible to add new :guilabel:`band sets` clicking the following button:

* |add_bandset|: add a new empty :guilabel:`band set`;

Click the |close_bandset| in the tab to remove the corresponding :guilabel:`band set`.
:guilabel:`Band sets` can be reordered dragging the tabs.

The :guilabel:`Center wavelength` of bands should be defined in order to use several functions of :guilabel:`SCP`.
If the :guilabel:`Center wavelength` of bands is not defined, the band number is used and some :guilabel:`SCP` tools will be disabled.

It is possible to define a multiplicative rescaling factor and additive rescaling factor for each band (for instance using the values in Landsat metadata), which are used on the fly (i.e. ``pixel value = original pixel value * multiplicative rescaling factor + additive rescaling factor``) during the processing.

Every :guilabel:`band set` is defined with the following table:

* |input_table| :guilabel:`Band set #`: table containing the following fields;
	* :guilabel:`Band name` |project_save|: name of the band; name cannot be edited;
	* :guilabel:`Center wavelength` |project_save|: center of the wavelength of the band;
	* :guilabel:`Multiplicative Factor` |project_save|: multiplicative rescaling factor;
	* :guilabel:`Additive Factor` |project_save|: additive rescaling factor;
	* :guilabel:`Wavelength unit` |project_save|: wavelength unit;
	* :guilabel:`Image name` |project_save|: image name for multiband rasters;
	* :guilabel:`Date` |project_save|: image acquisition date;

* |move_up|: move highlighted bands upward;
* |move_down|: move highlighted bands downward;
* |order_by_name| : sort automatically bands by name, giving priority to the ending numbers of name;
* |remove|: remove highlighted bands from the :guilabel:`active band set`;
* |reset|: clear all bands from :guilabel:`active band set`;
	
* :guilabel:`Wavelength quick settings` |input_list| |optional|: rapid definition of band center wavelength for the following satellite sensors:
	* ASTER;
	* GeoEye-1;
	* GOES;
	* Landsat 8 OLI;
	* Landsat 7 ETM+;
	* Landsat 4-5 TM;
	* Landsat 1, 2, and 3 MSS;
	* MODIS;
	* Pleiades;
	* QuickBird;
	* RapidEye;
	* Sentinel-2;
	* Sentinel-3;
	* SPOT 4, 5, and 6;
	* WorldView-2 and WorldView-3;

* :guilabel:`Wavelength unit` |input_list| |project_save|: select the wavelength unit among:
	* :guilabel:`Band number`: no unit, only band number;
	* :math:`\mu m`: micrometres;
	* :guilabel:`nm`: nanometres;
	
* :guilabel:`Date` |input_date| |optional|: set the date of acquisition;
* |import|: import a previously saved :guilabel:`active band set` from file;
* |export|: export the :guilabel:`active band set` to a file;

.. raw:: html

	<iframe allowfullscreen="" frameborder="0" height="360" src="http://www.youtube.com/embed/1PclAtPjyZE?rel=0" width="100%"></iframe>

http://www.youtube.com/watch?v=1PclAtPjyZE

