.. _main_interface_window:

******************************
Main Interface Window
******************************

.. |br| raw:: html

 <br />

The Main Interface window includes several pre processing and post processing functions such as: plot of ROI **spectral signatures** and **scatter plot** of ROIs; **multiple ROI creation** at once using point list; **clipping of multiple rasters** at once using coordinates or a shapefile boundary; **Landsat pre processing** for automatic conversion to reflectance and temperature; **accuracy assessment**; **land cover change calculation**; **classification report**; **band set definition**; and **advanced settings**.

The Main interface is composed of several tabs:

ROI tools
Spectral signature
Multiple ROI creation
Pre processing
Clip multiple rasters
Landsat
Post processing
Accuracy
Land cover change
Classification report
Band set
Settings

The ``ROI tools`` tab includes the ``Spectral signature`` calculation and visualization.
The ``Scatter plot`` tab allows for the calculation of the ROI scatter plots, which are useful to assess ROI separability choosing between two bands. Pixel values for two raster bands are represented as points in the 2D space.
The ``Multiple ROI creation`` which allows for the automatic creation of ROIs, given a list of points (coordinates) and class definitions. This can be useful for the rapid classification of multi-temporal images, or for creating several ROIs using GPS data from field survey.

The ``Pre processing`` tab allows for the ``Clipping of multiple rasters`` at once, using point coordinates or a shapefile. Also, the Landsat tab allows for the conversion of ``Landsat`` images from DN (i.e. Digital Numbers) to the physical measure of Top Of Atmosphere reflectance (TOA), or the application of a simple atmospheric correction using the DOS1 method (Dark Object Subtraction 1), which is an image-based technique (for more information about the Landsat conversion to TOA and DOS1 correction, see the yellow frame at the end of this section).

The ``Post processing`` tab provides the abilities to perform the ``Accuracy assessment`` (by GRASS GIS ``r.kappa``), comparing a classification to a reference shapefile, and to calculate the ``Land cover change`` (by SAGA GIS ``change detection``) between two classifications. Also, the ``Classification`` report allows for the calculation of class statistics in pixel, percentage and area.

The ``Settings`` tab allows for the name customization of the training shapefile's required fields, which is useful for using any existing shapefile containing training polygons.
Also, the Settings tab contains debugging utilities for testing the installation of the several dependencies (SAGA GIS, GRASS GIS) and for the creation a log file.

.. _ROI_tools_tab:
 
ROI tools tab
=============

.. _spectral_signature_tab:

Spectral signature tab
----------------------

.. _roi_signatures:

ROI signatures
^^^^^^^^^^^^^^

* [ ``Select all`` ]: select all ROIs for plot;
* [ ``Calculate signature`` ]: calculate statistics for selected ROIs (using the raster selected in the ROI tool tab);
* ☑ ``Plot`` σ: if checked, plot the standard deviation for each ROI;
* [ ``Delete selected ROIs`` ]: delete selected ROIs.

.. _scatter_plot_tab:

Scatter plot tab
----------------

.. _roi_list_2:

ROI list
^^^^^^^^

* [ ``Select all`` ]: select all ROIs for plot;
* < ``Band X`` >: X band of the plot;
* < ``Band Y`` >: Y band of the plot;
* [ ``Calculate scatter plot`` ]: calculate the scatter plot (it can be time consuming).
