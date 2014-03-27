.. _semi-automatic_OS:

*******************
Semi-Automatic OS
*******************

.. |br| raw:: html

 <br />

The Semi-Automatic OS is a lightweight virtual machine for the land cover classification of remote sensing images. It includes the Semi-Automatic Classification Plugin for QGIS 2.2, already configured along with all the required dependencies (SAGA GIS, GDAL, Numpy, SciPy and Matplotlib).

.. figure:: _static/Semi-Automatic_OS.jpg
	:align: center
	
	:guilabel:`Semi-Automatic OS desktop`
	
The Semi-Automatic OS is based on `Ubuntu <http://www.ubuntu.com/>`_ 13.10 32-bit, and it is designed to require very little hardware resources. It uses `LXDE <http://lxde.org/>`_ and `Openbox <http://openbox.org/>`_ as main desktop environment.
This virtual machine can be useful for testing the Semi-Automatic Classification Plugin, or when the installation of the required programs in the host system is problematic.
|br|
At the moment, the Semi-Automatic OS is available as a virtual machine. The latest version is downloadable here (about 500 MB). It is a .vmdk file (about 2.3 GB when extracted) that can be run in the open source VirtualBox, or any other virtualization program.
The desktop includes a sample Landsat 8 dataset available from the U.S. Geological Survey.
|br|
The following is a guide for the installation of the Semi-Automatic OS in the open source program of virtualization `VirtualBox <https://www.virtualbox.org/>`_.

The main installation steps are:

	#. Download VirtualBox open source software from here (select a proper version depending on your OS) and install it; at the end of the installation restart the system;
	
	#. Download the Semi-Automatic OS virtual machine (about 500 MB) from here;
	
	#. Extract the virtual machine content in a directory (it requires about 2.3 GB of disk space); the file is compressed in 7z format (if needed, download the open source extraction software from http://www.7-zip.org/);
	
	#. Run VirtualBox and create a new Ubuntu virtual machine;
	
		#. Click the New button;
		
		#. Type a name for the virtual machine (for instance Semi-Automatic OS); select Linux and Ubuntu as Type and Version respectively; click Next;
		
			.. image:: _static/v1.jpg
		
		#. Set the memory size; the more is the better, but this parameter should not exceed a half of he host system RAM (for instance if the host system has 1 GB of RAM, type 512 MB); click Next;
		
			.. image:: _static/v2.jpg
			
		#. In the Hard drive settings select Use an existing virtual hard drive file and select the downloaded file SemiAutomaticOS.vmdk; click Create;
	
			.. image:: _static/v3.jpg
	
	#. Start the Semi-Automatic OS by clicking the Start button;
	
	#. It is recommended to install the virtualbox-guest-utils in the virtual machine, from the Menu > Preferences > Synaptic Package Manager; it allows for a better integration of the Semi-Automatic OS in the host system, such as: the resize of the system window, or the folder sharing.
		
**Attention!** If the virtual machine cannot access to internet, double click the script virtualbox_network.sh that is on the Desktop, and click Execute.

|br|
The Semi-Automatic OS includes a sample dataset (Landsat 8 images available from the U.S. Geological Survey) that can be used for testing purposes.

|br|
Semi-Automatic OS is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3 of the License.
Semi-Automatic OS is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details. See http://www.gnu.org/licenses/.