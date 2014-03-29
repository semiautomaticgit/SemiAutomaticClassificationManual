.. _landsat_conversion_to_reflectance:

***********************************************************************
Landsat image conversion to reflectance and DOS1 atmospheric correction
***********************************************************************

.. |br| raw:: html

 <br />
 

Radiance is the "flux of energy (primarily irradiant or incident energy) per solid angle leaving a unit surface area in a given direction", "Radiance is what is measured at the sensor and is somewhat dependent on reflectance" (NASA, 2011, p. 47).
The Spectral Radiance at the sensor's aperture (L\ :sub:`λ` ) is measured in [watts/(meter squared * ster * μm)] and for Landsat images it is given by (https://landsat.usgs.gov/Landsat8_Using_Product.php):

.. math::

	L_{λ} = M_{L} * Q_{cal} + A_{L}

where:

* M\ :sub:`L` = Band-specific multiplicative rescaling factor from Landsat metadata (RADIANCE_MULT_BAND_x, where x is the band number)
* A\ :sub:`L` = Band-specific additive rescaling factor from Landsat metadata (RADIANCE_ADD_BAND_x, where x is the band number)
* Q\ :sub:`cal` = Quantized and calibrated standard product pixel values (DN)

"For relatively clear Landsat scenes, a reduction in between-scene variability can be achieved through a normalization for solar irradiance by converting spectral radiance, as calculated above, to planetary reflectance or albedo. This combined surface and atmospheric reflectance of the Earth is computed with the following formula" (NASA, 2011, p. 119):

.. math::
	ρ_{p} = (π * L_{λ} * d^{2} )/ (ESUN_{λ} * cosθ_{s})

where:

* ρ\ :sub:`p` = Unitless planetary reflectance, which is “the ratio of reflected versus total power energy” (NASA, 2011, p. 47)
* L\ :sub:`λ` = Spectral radiance at the sensor's aperture (at-satellite radiance)
* d = Earth-Sun distance in astronomical units (provided with Landsat 8 metafile, and an excel file is available from http://landsathandbook.gsfc.nasa.gov/excel_docs/d.xls)
* ESUN\ :sub:`λ` = Mean solar exo-atmospheric irradiances
* θ\ :sub:`s` = Solar zenith angle in degrees, which is equal to θ\ :sub:`s` = 90° - θ\ :sub:`e` where θ\ :sub:`e` is the Sun elevation

It is worth pointing out that Landsat 8 images are provided with  band-specific rescaling factors that allow for the direct conversion from DN to TOA reflectance. However, the effects of the atmosphere (i.e. a disturbance on the reflectance that varies with the wavelenght) should be considered in order to measure the refletance at the ground. As described by Moran et al. (1992), the land surface reflectance (ρ) is:

.. math::

	ρ = [π * (L_{λ} - L_{p}) * d^{2}]/ [T_{v} * ( (ESUN_{λ} * cosθ_{s} * T_{z} ) + E_{down} )]

where:

* L\ :sub:`p` is the path radiance
* T\ :sub:`v` is the atmospheric transmittance in the viewing direction
* T\ :sub:`z` is the atmospheric transmittance in the illumination direction
* E\ :sub:`down` is the downwelling diffuse irradiance

Therefore, we need several atmospheric measurements in order to calculate ρ (physically-based corrections). Alternatively, it is possible to use image-based techniques for the calculation of these parameters, without in-situ measurements during image acquisition.

The Dark Object Subtraction (DOS) is a family of image-based atmospheric corrections.
Chavez (1996) explains that “the basic assumption is that within the image some pixels are in complete shadow and their radiances received at the satellite are due to atmospheric scattering (path radiance). This assumption is combined with the fact that very few targets on the Earth's surface are absolute black, so an assumed one-percent minimum reflectance is better than zero percent”. It is worth pointing out that the accuracy of image-based techniques is generally lower than physically-based corrections, but they are very useful when no atmospheric measurements are available as they can improve the estimation of land surface reflectance.
The path radiance is given by (Sobrino, et al., 2004):

.. math::
	L_{p} = L_{min} – L_{DO1\%}

where:

* L\ :sub:`min` = “radiance that corresponds to a digital count value for which the sum of all the pixels with digital counts lower or equal to this value is equal to the 0.01% of all the pixels from the image considered” (Sobrino, et al., 2004, p. 437), therefore the radiance obtained with that digital count value (DN\ :sub:`min`)
* L\ :sub:`DO1%` = radiance of Dark Object, assumed to have a reflectance value of 0.01

Therfore for Landsat images:

.. math::

	Lmin = M_{L} * DN_{min} + A_{L}

The radiance of Dark Object is given by (Sobrino, et al., 2004):

.. math::

	L_{DO1\%} = 0.01 * [(ESUN_{λ} * cosθ_{s} * T_{z} ) + E_{down}] * T_{v} / (π * d^{2})

Therefore the path radiance is:

.. math::

	L_{p} = M_{L} * DN_{min} + A_{L} – 0.01* [(ESUN_{λ} * cosθ_{s} * T_{z} ) + E_{down}] * T_{v} / (π * d^{2})

There are several DOS techniques (e.g. DOS1, DOS2, DOS3, DOS4), based on different assumption about T\ :sub:`v`, T\ :sub:`z` , and E\ :sub:`down` .
The simplest technique is the DOS1, where the following assumptions are made (Moran et al., 1992):

* T\ :sub:`v` = 1
* T\ :sub:`z` = 1
* E\ :sub:`down` = 0

Therefore the path radiance is:

.. math::

	L_{p} = M_{L} * DN_{min} + A_{L} – 0.01 * ESUN_{λ} * cosθ_{s} / (π * d^{2})

And the resulting land surface reflectance is given by:

.. math::

	ρ = [π * (L_{λ} - L_{p}) * d^{2}]/ (ESUN_{λ} * cosθ_{s}) 

ESUN [W /(m2 * μm)] values for Landsat sensors are provided in the following table.

+-------+---------------+-----------------+-------------+
| Band  |  Landsat 4*   |  Landsat 5**    | Landsat 7** |
+=======+===============+=================+=============+
| 1     |   1957        |    1983         | 1997        |
+-------+---------------+-----------------+-------------+
| 2     |   1825        |    1769         | 1812        |
+-------+---------------+-----------------+-------------+
| 3     |   1557        |    1536         | 1533        |
+-------+---------------+-----------------+-------------+
| 4     |   1033        |    1031         | 1039        |
+-------+---------------+-----------------+-------------+
| 5     |   214.9       |    220          | 230.8       |
+-------+---------------+-----------------+-------------+
| 7     |   80.72       |    83.44        | 84.90       |
+-------+---------------+-----------------+-------------+

\* from Chander & Markham (2003)

** from Finn, et al. (2012)

|br|
For Landsat 8, ESUN can be calculated as (from http://grass.osgeo.org/grass65/manuals/i.landsat.toar.html):

.. math::

	ESUN = (π * d^{2}) * RADIANCE\_MAXIMUM / REFLECTANCE\_MAXIMUM

where RADIANCE_MAXIMUM and REFLECTANCE_MAXIMUM are provided by image metadata.

|br|

.. _landsat_conversion_to_temperature:

*************************************************
Conversion to At-Satellite Brightness Temperature
*************************************************

For Landsat thermal bands, the conversion of DN to At-Satellite Brightness Temperature is given by (from https://landsat.usgs.gov/Landsat8_Using_Product.php):

.. math::

	T_{B} = K_{2} / ln[(K_{1} / L_{λ}) + 1]

where:

* K\ :sub:`1` = Band-specific thermal conversion constant (in watts/meter squared * ster * μm)
* K\ :sub:`2` = Band-specific thermal conversion constant (in kelvin)

and L\ :sub:`λ` is the Spectral Radiance at the sensor's aperture, measured in watts/(meter squared * ster * μm); for Landsat images it is given by (from https://landsat.usgs.gov/Landsat8_Using_Product.php)

.. math::
	L_{λ} = M_{L} * Q_{cal} + A_{L}
 
where:

* M\ :sub:`L` = Band-specific multiplicative rescaling factor from Landsat metadata (RADIANCE_MULT_BAND_x, where x is the band number)
* A\ :sub:`L` = Band-specific additive rescaling factor from Landsat metadata (RADIANCE_ADD_BAND_x, where x is the band number)
* Q\ :sub:`cal` = Quantized and calibrated standard product pixel values (DN)

The K\ :sub:`1` and K\ :sub:`2` constant for Landsat sensors are provided in the following table:

+-----------------------------------------------+---------------+-----------------+-------------+
| Constant                                      |  Landsat 4*   |    Landsat 5*   | Landsat 7** |
+===============================================+===============+=================+=============+
| K\ :sub:`1` (watts/meter squared * ster * μm) |   671.62      |    607.76       | 666.09      |
+-----------------------------------------------+---------------+-----------------+-------------+
| K\ :sub:`2` (Kelvin)                          |   1284.30     |    1260.56      | 1282.71     |
+-----------------------------------------------+---------------+-----------------+-------------+

\* from Chander & Markham (2003)

** from NASA (2011)

|br|
For Landsat 8, the K\ :sub:`1` and K\ :sub:`2` values are provided in the image metafile.

|br|
**References**

* ``Chander, G. & Markham, B. 2003. Revised Landsat-5 TM radiometric calibration procedures and postcalibration dynamic ranges Geoscience and Remote Sensing, IEEE Transactions on, 41, 2674 – 2677``

* ``Chavez, P. S. 1996. Image-Based Atmospheric Corrections - Revisited and Improved Photogrammetric Engineering and Remote Sensing, [Falls Church, Va.] American Society of Photogrammetry, 62, 1025-1036``

* ``Finn, M.P., Reed, M.D, and Yamamoto, K.H. 2012. A Straight Forward Guide for Processing Radiance and Reflectance for EO-1 ALI, Landsat 5 TM, Landsat 7 ETM+, and ASTER. Unpublished Report from USGS/Center of Excellence for Geospatial Information Science, 8 p`` , http://cegis.usgs.gov/soil_moisture/pdf/A%20Straight%20Forward%20guide%20for%20Processing%20Radiance%20and%20Reflectance_V_24Jul12.pdf

* ``Moran, M.; Jackson, R.; Slater, P. & Teillet, P. 1992. Evaluation of simplified procedures for retrieval of land surface reflectance factors from satellite sensor output Remote Sensing of Environment, 41, 169-184``

* ``NASA (Ed.) 2011. Landsat 7 Science Data Users Handbook Landsat Project Science Office at NASA's Goddard Space Flight Center in Greenbelt, 186`` http://landsathandbook.gsfc.nasa.gov/pdfs/Landsat7_Handbook.pdf

* ``Sobrino, J.; Jiménez-Muñoz, J. C. & Paolini, L. 2004. Land surface temperature retrieval from LANDSAT TM 5 Remote Sensing of Environment, Elsevier, 90, 434-440``
