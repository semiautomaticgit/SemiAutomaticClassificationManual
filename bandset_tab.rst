.. _band_set_tab:

******************************
Band set (complete interface)
******************************

.. contents::
    :depth: 2
    :local:

.. |project_save| image:: _static/project_save.png
    :width: 20pt

.. |optional| image:: _static/optional.png
    :width: 20pt

.. |checkbox| image:: _static/checkbox.png
    :width: 18pt

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

.. |input_text| image:: _static/input_text.jpg
    :width: 20pt

.. |input_date| image:: _static/input_date.jpg
    :width: 20pt

.. |rgb_tool| image:: _static/semiautomaticclassificationplugin_rgb_tool.png
    :width: 20pt

.. |order_by_date| image:: _static/semiautomaticclassificationplugin_order_by_date.png
    :width: 20pt


.. figure:: _static/interface/band_set_tab.png
    :align: center
    :width: 100%

    |bandset_tool| :guilabel:`Band set`

Image input in :guilabel:`SCP` is named :guilabel:`band set`.
It is loaded only if the :guilabel:`Simplified interface` is not enabled.
Compared to the :guilabel:`Simplified interface`, this tab allows for the
definition of one or multiple :guilabel:`band sets` to
be used as input for classification and other tools.

:guilabel:`Band sets` are identified by numbers.
The :guilabel:`active band set` (i.e. the one selected
in :ref:`band_set_definition`) is used as input for several
tools in :ref:`SCP_dock` and the :ref:`working_toolbar`.
Other :guilabel:`SCP` tools allow for the selection of :guilabel:`band set`
numbers.

The :guilabel:`Band set` definition is saved with the QGIS project.

.. tip::
    Information about APIs of this tool in Remotior Sensus at this
    `link <https://remotior-sensus.readthedocs.io/en/latest/remotior_sensus.core.bandset_catalog.html>`_ .


Following a video tutorial about this tool.

https://www.youtube.com/watch?v=DQXfBPke2J4

.. raw:: html

    <iframe allowfullscreen="" frameborder="0" height="360" src="https://www.youtube.com/embed/DQXfBPke2J4?rel=0" width="100%"></iframe>



.. _band_set_definition:

Band set definition
---------------------


A :guilabel:`band set` is basically a list of bands defined as
the following table.


.. list-table::
    :widths: auto
    :header-rows: 1

    * - Band name
      - Center wavelength
      - Multiplicative Factor
      - Additive Factor
      - Wavelength unit
      - Path
      - Date
    * - name of the band (it cannot be edited)
      - center of the wavelength of the band
      - multiplicative rescaling factor
      - additive rescaling factor
      - wavelength unit
      - relative path of the raster
      - image acquisition date


It is possible to add to the :guilabel:`active band set` one or more bands
already loaded in QGIS, or select files that are not loaded.
A :guilabel:`Date` can be assigned to a :guilabel:`band set` which can be later
used in other tools to select :guilabel:`band sets` by date.
Also, a :guilabel:`Root directory` for band paths can be defined, which can be
useful to create projects with relative paths.

The following tools are available.

.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - |open_file|
      - open file explorer and add raster files (preferably single band raster)
        to the :guilabel:`active band set`
    * - |plus|
      - open a window to select rasters already loaded in QGIS and add them to
        the :guilabel:`active band set`
    * - |move_up|
      - move highlighted bands upward
    * - |move_down|
      - move highlighted bands downward
    * - |order_by_name|
      - sort automatically bands by name, giving priority to the ending numbers
        of name
    * - |remove|
      - remove highlighted bands from the :guilabel:`active band set`
    * - |reset|
      - clear all bands from :guilabel:`active band set`
    * - |import|
      - import a previously saved :guilabel:`active band set` from file
    * - |export|
      - export the :guilabel:`active band set` to a file


It is possible to define a multiplicative rescaling factor and additive
rescaling factor for each band (for instance using the values in
Landsat metadata), which are used on the fly
(i.e. ``pixel value = original pixel value * multiplicative rescaling factor + additive rescaling factor``)
during the processing.

The :guilabel:`Center wavelength` of bands should be defined in order to
use several functions of :guilabel:`SCP`.
If the :guilabel:`Center wavelength` of bands is not defined, the band number
is used and some :guilabel:`SCP` tools will be disabled.


.. _band_quick_settings:

Band quick settings
---------------------

These tools allow for quickly set attributes of
the :guilabel:`active band set`.

.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - :guilabel:`Wavelength` |input_list|
      - rapid definition of band center wavelength for the following satellite
        sensors:
        * Band order
        * ASTER
        * GeoEye-1
        * GOES
        * Landsat 8 OLI
        * Landsat 7 ETM+
        * Landsat 4-5 TM
        * Landsat 1, 2, and 3 MSS
        * MODIS
        * Pleiades
        * QuickBird
        * RapidEye
        * Sentinel-2
        * Sentinel-3
        * SPOT 4, 5, and 6
        * WorldView-2 and WorldView-3
    * - |open_file|
      - open a csv file of wavelength values (center wavelength separated by
        comma or new line)
    * - :guilabel:`Wavelength unit` |input_list|
      - select the wavelength unit among:
            * :guilabel:`Band number`: no unit, only band number
            * :math:`\mu m`: micrometres
            * :guilabel:`nm`: nanometres
    * - :guilabel:`Date` |input_date|
      - set the date of acquisition


.. _band_set_table:

Band set table
---------------------

The table on the left side is the :guilabel:`Band set table`.
It includes the list of all the defined :guilabel:`band sets`
(the names of the first bands are displayed),
which can be selected with a left click.
Double click on a table item can be used to define
the :guilabel:`Active band set`.

A :guilabel:`Filter` can be used to display :guilabel:`band sets` in the table
matching a name.

The following tools are available for managing :guilabel:`band sets`.

.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - |add_bandset|
      - add a new empty :guilabel:`band set`
    * - |remove|
      - remove highlighted :guilabel:`band sets`
    * - |order_by_date|
      - sort :guilabel:`band sets` by date
    * - |move_up|
      - move highlighted :guilabel:`band sets` upward
    * - |move_down|
      - move highlighted :guilabel:`band sets` downward
    * - |rgb_tool|
      - display the RGB color composite of selected :guilabel:`band sets` (a
        virtual raster is added in QGIS)

.. _band_set_tools:

Band set tools
---------------------


:guilabel:`Band set tools` are tools that can be executed directly
on :guilabel:`Active band set`.
Multiple tools can be selected by the corresponding check box.
This can also be useful to automate the processing during image conversion.

.. list-table::
    :widths: auto
    :header-rows: 1

    * - Tool symbol and name
      - Description
    * - |checkbox| :guilabel:`Create virtual raster of band set`
      - create a multiband virtual raster of :guilabel:`Active band set`
    * - |checkbox| :guilabel:`Create raster of band set (stack bands)`
      - stack bands in a single multiband raster
    * - |checkbox| :guilabel:`Build band overview`
      - build band overview of :guilabel:`Active band set`
    * - |checkbox| :guilabel:`Band calc expression`
      - execute the expression defined in :ref:`band_calc_tab`
    * - |run|
      - execute selected tools