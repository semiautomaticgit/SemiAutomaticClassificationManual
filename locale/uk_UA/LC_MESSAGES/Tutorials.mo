��    C      4  Y   L      �  �  �  �   4  [  �  �   %	    �	  	   �
  
   �
     �
     �
            )  �   J     #  A   5     w  �   �     Q  M   c  �  �  �   H  m   $  �   �  2  U  x  �  ^     �   `  �   �  �   �  J  y  �   �  �   �  �  �  �   !  x    -  �  �  �  J   Q!    �!  �   �"  p  O#  g   �&  8   ('     a'    '  D  �(  �   �)      d*     �*  �  �*  �   Q,     �,     -     -     3-  �  K-  �  �.  �   �1  �   j2  )  \3  R   �4  	   �4  �  �4  �   �6  ~   T7  8  �7  s   9  x  �9    �:    >  Q  ?  �   nA  f  lB     �D     �D     E  >   "E  `   aE  `   �E  ?  #F  +   cG     �G     H  {  &H  0   �I  �   �I  �  uJ  J  ?M  �   �N  p  =O  9  �P  �  �R  �   �U  �   1V    W  �  )X    	Z  �  \    �]  s  �_  �  !b  E  �c  \  �e  �  Ji     l  �  �l  �   n  �  o  �   �s  u   �t  6   9u  �  pu  v  Gw    �y  Y   �z  5   {  �  R{  �   R~  1   R     �  <   �  8   �  �  �  �  ��  �  ��  �  l�  �  (�  �   ��  (   ��    ��    ��  �   ��    e�  �   {�     5      4   =   &       8                             7                     !   :   3      <   ,   "       B            (         
   A      *   .   1       9       %   @         #                            )       '   	          C   2   $       ;   >                     ?             6   -         +   0      /             **Algorithm threshold** allows you to leave unclassified pixels that meet a certain rule: for Maximum Likelihood, pixels are unclassified if probability is less than threshold (max 100); for Minimum Distance, pixels are unclassified if distance is greater than threshold; for Spectral Angle Mapping, pixels are unclassified if spectral angle distance is greater than threshold (max 90); **Hint**: after adding a new class to the training shapefile, repeat the above steps to overwrite the .qml file and update the classification style. **Hint**: in order to use any shapefile (having different field names for ID and Information) as training shapefile, it is possible to change the default field names in the tab Settings of the main interface, according to the existing field names. When needed, the plugin will add automatically other fields for the spectral signature calculation. **Hint**: in the tab Settings of the main interface, it is possible to change the maximum number of characters for ROIs of the plot legend (which is 15 by default). **Preview size** is the side of the classification preview (in pixel unit); setSize to 300; click the button + under Classification preview and click on the image; similarly to the ROI, click the button Redo to perform another classification preview at the same point; 2 - Blue; 3 - Green; 4 - Red; 5 - Near-Infrared; 6 - Short Wavelength Infrared 1; 7 - Short Wavelength Infrared 2. A large number of ROIs is required for a good classification. Download this `training shapefile <http://hub.qgis.org/attachments/download/6004/classification.zip>`_ , which contains several ROIs, and load it in QGIS. Advanced settings Classification preview is a rapid way to evaluate collected ROIs. Create ROIs Created ROIs are displayed in the ROI list; double click on any item to **zoom to the corresponding ROI** in the map; also, it is possible to **delete selected ROIs** using the button Delete selected ROIs. Define the inputs For more and updated tutorials please visit http://fromgistors.blogspot.com . If the checkbox Calculate accuracy is checked, than the **error matrix** is calculated and saved as file .txt in the same directory of the .tif file (also, it is automatically displayed in the tab of the plugin main interface Post processing > Accuracy); the error matrix is calculated by comparing the classification to the training shapefile used for the classification (see below Post processing tools); If the checkbox Calculate signature is checked, then the **ROI spectral signature** is calculated while the ROI is saved; now, uncheck this checkbox (we are going to calculate it later, from the Spectral signature tab); If the checkbox Mask unchanged pixel is checked, then unchanged pixels will have a value of 0 (Unclassified). If the checkox Plot σ is checked, then the plot will display the **standard deviation** of each ROI; you can pan and zoom through the plot using the navigation toolbar (provided by Matplotlib). In  addition to this raster,  it  possible  to **create the  shapefile  of  the classification** by checking the checkbox Create vector; the shapefile will be saved with the same name and in the same directory of the .tif file (it takes some minutes for the vector creation, depending on your system spec); In order to **create a ROI**, in the dock ROI creation click the button + beside Create a ROI (this activates the ROI pointer); ROIs are created by clicking on any pixel of the image; click on the dark area in the South, which is the Lake Albano (use the mouse scroll to zoom); after a few seconds the ROI polygon will appear over the image (a semitransparent orange polygon); In order to **save the ROI to the training shapefile** click the button Save ROI to shapefile; In order to create and save the ROIs to the shapefile click Create and save ROIs (it takes some time, depending on the number of points). In the Classification dock, under Classification style click the button Select qml to select the file style.qml; the next classification will be loaded with this style. In the panel Layers, left click on a classification preview and selectProperties; change the colours and labels of classes, according to the training ROIs; then, create click Save style ... to save the .qml file (e.g. style.qml); In the plugin dock ROI creation click the button Band set besideSelect an image; the tab Band set will open; click the button Select All, then Add rasters to set; under Band set definition, order the band names in ascending order, from top to bottom using the arrows (this is useful for the interpretation of spectral signatures); In the plugin main interface, select the tab ROI tools > Spectral signature, which displays the plots of selected ROIs, and select the item water; it is possible to **calculate the ROI signature** by clicking the button Calculate signature and confirming; In the tab Settings of the plugin main interface it is possible to **set the RAM used for processing**; set the Available RAM according to your computer spec (in general, half of the system RAM is a good value); In this tutorial we are going to classify a Landsat image (single band rasters). Download the `sample dataset <http://hub.qgis.org/attachments/download/5930/Sample_data_Landat8_bands.zip>`_, which is a Landsat 8 image (a subset acquired in the South of Rome, Italy) available from the U.S. Geological Survey. The following bands (each band is a single 16 bit raster) are included in the file: It is also possible to **import a list of points**, maybe from field survey; download  `this  text  file <http://hub.qgis.org/attachments/download/6176/sample_points.txt>`_,  click  the  button  Import  and  select  the downloaded file; It is possible to **apply a mask shapefile** to the classification; download `this  shapefile <http://hub.qgis.org/attachments/download/6113/Mask_shapefile.zip>`_ ,  check  the  checkbox  Apply  mask  and  select  the downloaded  shapefile;  click  the  button  Perform  classification,  and  the classification will be saved along with the error matrix and the vector output. It is possible to **assess the classification accuracy** (implemented by GRASS GIS), by comparing the classification to a reference shapefile (not necessarily the training shapefile); now, select the tab Post processing > Accuracy of the plugin main interface; select theclassification.tif beside Select a classification to assess and select the ROI shapefile beside Select the reference shapefile; then click the button Calculate error matrix and the matrix will be displayed; you can save the error matrix by clicking the button Save error matrix to file; It is possible to **create automatically ROIs given a list of point coordinates** (X, Y), class ID and ROI information (ROIs are created with the parameters defined in the dock ROI creation); select the ROI tools tab > Multiple ROI creation and click Add point to add a new line where you can fill the required fields; now select the line (click the line number on the left) and click Remove highlighted points; It is possible to **delete the last saved ROI** by clicking Undo save ROI. It is possible to change the **ROI creation parameters**, in order to create a smaller or lager ROI; change the Min ROI size value to 100, and the Max ROI width value to 150; in order to **create a ROI at the same point clicked before**, click the button Redo ROI; It is possible to choose between several **classification algorithms** (Maximum Likelihood; Minimum Distance; Spectral Angle Mapping); now select Spectral Angle Mapping; It is useful to **calculate the land cover change** (through GDAL and Numpy) between a  reference  classification  raster  and  a  new  classification  raster;  download  `this classification <http://hub.qgis.org/attachments/download/6180/reference_classification.zip>`_ (pretend this is the last year classification); select the tab Post processing > Land cover change of the plugin main interface, select the downloaded classification  as  reference  classification,  and  the  classification.tif  as  the  new classification; click the button Calculate land cover change and select where to save the raster of changes and the related table (i.e. a file .csv, whose values are separated by tab); pixel values of the raster of changes (ChangeCode) are described in the table, and each value represent a class of change from the reference classification to the new classification; It is useful to create a classification style with labels that will be loaded for every classification. It is worth mentioning also other **advanced settings**: Multiple ROI creation at once Now we need to create a training shapefile that will store ROIs (a polygon layer that requires two fields ID_class and ROI_info in the attribute table); in the dock ROI creation click the button New shapefile, and select where to save the shapefile (for instance ROI.shp). Now, check Rapid ROI on band and click the button Redo ROI; this way, **ROIs can be computed only on one selected band**, saving time especially for hyperspectral images; change the value to 4 beside Rapid ROI on band, and click the button Redo ROI; as you can see, ROIs have different shapes depending on the selected band; Open the Settings tab of the main interface; under ROI style it is possible to **change colour and transparency of created ROIs** as you wish. Perform a classification preview Post processing tools ROIs are polygons delimiting a certain land cover class, which are required to train the classification algorithm. Created ROIs are temporary polygons, which are placed inside the group Class_temp_group (added automatically if missing) in the Layers panel. This group should be moved to the bottom of the Layers panel; this way, only the last created ROI will be displayed over the image (the previous ROIs will be automatically hidden). Required inputs are a multi band raster or single band rasters, and a training shapefile for ROI creation. In this tutorial we are going to create a band set. Save the ROIs to shapefile Scatter plot Set a classification style Spectral signature plot Start QGIS and load the raster bands; create a color composite (RGB=543) of the sample data, which is useful for the photo interpretation, as explained `here (point 2) <http://fromgistors.blogspot.com/2013/07/land-cover-classification-update.html>`_; start the Semi-Automatic Classification Plugin (if the docks of the are not displayed, click the button Show docks in the main plugin interface); The Semi-Automatic Classification Plugin uses SAGA GIS for the classification process. The SAGA algorithms work only with single band images as input. Therefore, if input is a multi band raster (i.e. a single image file made of several bands), the Semi-Automatic Classification Plugin automatically splits the input file to single band rasters, which takes some time depending on raster size. In order to optimize the classification process (especially for hyperspectral images), it is preferable to use single band rasters, or split the image file to single bands, as explained `here (point 1) <http://fromgistors.blogspot.com/2013/07/working-with-multispectral-bands-in-qgis.html>`_ . The ``Scatter plot`` tab allows for the calculation of the ROI scatter plots, which are useful to assess ROI separability choosing between two bands. Pixel values for two raster bands are represented as points in the 2D space. The following is a basic tutorial about the use of the Semi-Automatic Classification Plugin. However, visit the blog `From GIS to Remote Sensing <http://fromgistors.blogspot.com/search/label/Tutorial>`_ for new and updated tutorials such as: The main output of a classification is a raster file .tif; click the button Perform  classification  and  select  where  to  save  the  output  (e.g. classification.tif);  use  the  classification  style  from this  `file  zip <http://hub.qgis.org/attachments/download/6004/classification.zip>`_ ; This step is required in order to save the created ROIs to the training shapefile. Tutorials Under ROI definition type a brief description of the ROI inside the field Information (e.g. water); this description will not be used during the classification process, but it is useful for distinguishing ROIs; the field ID (i.e. identifier of the class) is used as reference for the land cover classification, therefore it is important that each category has a unique ID value; ROIs sharing the same ID are treated as a single ROI; now, leave the ID set to 1; `Estimation of Land Surface Temperature with Landsat Thermal Infrared Band <http://fromgistors.blogspot.com/2014/01/estimation-of-land-surface-temperature.html>`_; `Land Cover Classification of Cropland <http://fromgistors.blogspot.com/2014/01/land-cover-classification-of-cropland.html>`_. if the checkbox Record events in a Log file is checked a Log file is created and updated during the processes; the Log file is saved in the plugin directory (located  inside  your  user/home  directory, ``.qgis2/python/plugins/SemiAutomaticClassificationPlugin``),  with  the  name ``__0semiautomaticclass.log``; several buttons allow for the testing of program installation such as: SAGA GIS, GRASS GIS, and QGIS geoalgorithms; Project-Id-Version: Semi-Automatic Classification Plugin 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-04-12 10:08+0200
PO-Revision-Date: 2014-06-22 14:42+0200
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: uk_UA
X-Generator: Poedit 1.6.5
 **Порогова величина алгоритму** дозволяє залишати некласифікованими пікселі, що відповідають певній умові: для Maximum Likelihood пікселі не класифікуються, якщо імовірність менша за значення порогової величини (максимально 100); для Minimum Distance пікселі не класифікуються, якщо відстань більша за порогову величину; для Spectral Angle Mapping пікселі не класифікуються, якщо величина спектрального кута більша за порогове значення (максимально 90); **Порада**: після додавання нового класу до навчального шейп-файлу, повторіть вищеописані кроки для перезапису файлу .qml та оновлення стилю класифікації. **Порада**: щоб використовувати буд-який шейп-файл (з відмінними від ID та Information іменами полів) в якості навчального, скористайтесь можливістю зміни стандартних імен полів відповідно до наявних на вкладці Settings Головного вікна інтерфейсу. За потреби, модуль автоматично додасть інші поля для розрахунку спектральних сигнатур. **Порада**: на вкладці Settings головного інтерфесу є можливість змінити максимальну кількість символів для ROI в легенді графіка (стандартно 15). **Розмір попереднього перегляду** це довижина сторони квадрата області попереднього перегляду результатів класифікації (в пікселях); встановіть Size 300; натисніть кнопку + в блоці Classification preview та клацніть на зображенні; аналогічно до того, як це робилось для  ROI, натисніть кнопку Redo та здійсніть новий попередній перегляд в тій самій точці; 2 - Blue (синій); 3 - Green (зелений); 4 - Red (червоний); 5 - Near-Infrared (ближній інфрачервоний); 6 - Short Wavelength Infrared 1 (короткохвильовий інфрачервоний 1); 7 - Short Wavelength Infrared 2 (короткохвильовий інфрачервоний 2). Для якісної класифікації необхідна значна кількіть ROI. Завантажте `навчальний шейп-файл <http://hub.qgis.org/attachments/download/6004/classification.zip>`_ , який містить декілька ROI та відкрийте його в QGIS. Розширені налаштування Попередній перегляд класифікації дозволяє швидко оцінити зібрані ROI. Створення ROI Створені ROI відображаються в переліку ROI list; двічі клацніть на будь-якому елементі для **збільшення до охоплення відповідної ROI** на карті; також можливо **видалити вибрані ROI** скориставшись кнопкою Delete selected ROIs. Визначення входових даних Щоб ознайомитись з додатковими навчальними матеріалами завітайте до http://fromgistors.blogspot.com . Якщо перемикач Calculate accuracy увімкнено, то розраховується **матриця помилок** та зберігається як файл  .txt до того ж каталогу, що і файл .tif (також вона автоматично унаочнюється в головному інтерфейсі модуля на вкладці Post processing > Accuracy); матриця помилок розраховується на підставі порівняння класифікації з навчальним шейп-файлом, використаним для неї (дивіться нижче Інструменти післяоброблення); Якщо перемикач Calculate signature увімкнено, тоді під час збереження ROI розраховується також **спектральна сигнатура ROI**; вимкніть перемикач (ми розрахуємо її пізніше на вкладці Spectral signature); Якщо перемикач Mask unchanged pixel увімкнено, то пікселі, які не зазнали змін, матимуть значення 0 (Unclassified). Якщо опцію Plot σ увімкнено, тоді графік буде унаочнювати **стандартне відхилення** кожної ROI; ви можете перміщатись вздовж та змінювати масштаб графіка, використовуючи панель навігації (надається Matplotlib). Додатково до цього растру є можливість **створити шейп-файл результатів класифікації**, якщо увімкнути перемикач Create vector; шейп-файл буде збережений під тим самим ім'ям та до того самого каталогу, що і основний файл .tif (створення вектора може зайняти певний час, залежно від технічних характеристик вашої системи); Для **створення ROI** на панелі ROI creation натисніть кнопку + поруч з Create a ROI (це активує вказівник ROI); ROI створюються клацанням на будь-якому пікселі зображення; клацніть по темній області на півдні, яка є озером Альбано (використовуйте прокручування колеса мишки для наближення зображення); за декілька секунд на поверхні зображення з'явиться полігон ROI (напівпрозорий помаранчевий полігон); Для **збереження ROI до навчального шейп-файлу** клацніть кнопку Save ROI to shapefile; Для створення та збереження  ROI до шейп-файлу клацніть Create and save ROI (це може забрати певний час, залежно від кількості точок). На панелі Classification в блоці Classification style натисніть кнопку Select qml для вибору файлу style.qml; наступна класифікація буде завантажена з застосуванням цього стилю. На панелі шарів клацніть лівою кнопокою мишки на попередньому перегляді результатів класифікації та виберіть властивості шару; змініть кольори та мітки класів відповідно до навчальних ROI; тепер натисніть Зберегти стиль..., щоб зберегти файл .qml (наприклад style.qml); На панелі модуля ROI creation натисніть кнопку Band set поруч з Select an image; відкриється вкладка Band set; натисніть кнопку Select All, потому Add rasters to set; в блоці Band set definition за допомогою стрілок впорядкуйте імена каналів у висхідному порядку згори донизу (це корисно для інтерпретації спектральних сигнатур); В головному інтерфейсі модуля виберіть вкаладку ROI tools > Spectral signature, яка унаочнює графіки обраних ROI, та виберіть елемент water; є можливість **розрахувати сигнатуру ROI**, якщо натиснути кнопку Calculate signature та підтвердити; На вкладці Settings головного інтерфейсу модуля можливо **встановити об’єм оперативної пам’яті, що буде використовуватись для обробки**; налаштуйте Available RAM відповідно до технічних характеристик вашого комп'ютера (загалом, половина об'єму оперативної пам'яті системи є прийнятним значенням); В цих уроках ми розглянемо процедуру класифікації знімка Landsat (одноканальні растри). Завантажте `навчальний набір даних <http://hub.qgis.org/attachments/download/5930/Sample_data_Landat8_bands.zip>`_, який містить знімок Landsat 8 (територія знімання - південні околиці м. Рим, Італія) наданий U.S. Geological Survey. До файлу включені наступні канали (кожен канал - одноканальний 16-бітний растр): Також можливо **імпортувати перелік точок**,отриманих  наприклад під час польового знімання; завантажте `цей текстовий файл <http://hub.qgis.org/attachments/download/6176/sample_points.txt>`_,  клацніть кнопку Import та виберіть завантажений файл; Є можливість застосувати до класифікації **шейп-файл маски**; завантажте `цей шейп-файл <http://hub.qgis.org/attachments/download/6113/Mask_shapefile.zip>`_ , увімкніть перемикач Apply  mask і виберіть щойно завантажений шейп-файл; натисніть кнопку Perform  classification, і результати класифікації буде збережено разом з матрицею помилок та векторним результатом. Є можливість **оцінити точність класифікації** (втілена засобами ГІС GRASS) співставленням результатів класифікації з контрольним шейп-файлом (не обов'язково навчальним); перейдіть на вкладку Post processing > Accuracy головного інтерфейсу модуля; виберіть classification.tif  поруч з Select a classification to assess та виберіть шейп-файл ROI поруч з Select the reference shapefile; тепер натисніть кнопку  Calculate error matrix і матриця буде виведена у вікні; ви можете зберегти матрицю помилок, натиснувши на кнопку Save error matrix to file; Є можливість **автоматичного створення  ROI на підставі переліку точкових координат** (X, Y), ID класів та інформації про ROI (ROI створюються відповідно до налаштувань встановлених на панелі  ROI creation); виберіть вкладку ROI tools > Multiple ROI creation та клацніть Add point, щоб додати новий рядок, де можна заповнити необхідні поля; тепер виберіть рядок (клацніть номер рядка ліворуч) та клацніть Remove highlighted points; Також є можливість **видалити останню збережену ROI** клацнувши Undo save ROI. Можливо змінити **налаштування створення ROI** для створення більших або менших ROI; змініть значення Min ROI size на 100, а значення Max ROI width на 150; для того щоб **створити нову ROI в тій самій точці, що і попередню** натисніть кнопку Redo ROI; Є можливість вибирати між декількома **класифікаційними алгоритмами** (Maximum Likelihood; Minimum Distance; Spectral Angle Mapping); виберіть Spectral Angle Mapping; Корисним може бути **розрахунок змін земного покриву** (за допомогою GDAL та Numpy) між растрами контрольної та нової класифікації; завантажте  `цю класифікацію <http://hub.qgis.org/attachments/download/6180/reference_classification.zip>`_ (уявімо, що це класифікація для останнього року); виберіть в головному інтерфейсі модуля вкладку Post processing > Land cover change, в якості контрольної класифікації встановіть завантажену, а classification.tif як нову; натисніть кнопку Calculate land cover change та виберіть каталог для збереження растр змін та пов'язану з ним таблицю (файл .csv з розділювачами табуляції); значення пікселів растра змін (ChangeCode) пояснюються в таблиці і кожне значення представляє клас зміни від контрольної класифікації до нової; Доцільно створити уніфікований стиль умовних позначень класифікації, який буде застосовуватись для унаочнення результатів. Доцільно розглянути також деякі інші **розширені налаштування**: Створення множинних ROI заодно Тепер нам потрібно створити навчальний шейп-файл, який зберігатиме ROI (полігональний шар з двома обов'язковими полями атрибутивної таблиці ID_class та ROI_info); на панелі ROI creation натисніть кнопку New shapefile і виберіть каталог для збереження шейп-файлу (наприклад ROI.shp). Тепер увімкніть Rapid ROI on band та натисніть кнопку Redo ROI; таким способом **ROI можуть бути розраховані лише на підставі одного вибраного каналу**, зберігаючи час, що особливо актуально для гіперспектральних зображень; встановіть значення 4 поруч з  Rapid ROI on band, та натисніть кнопку Redo ROI; як бачите, ROI мають різну конфігурацію залежно від вибраного каналу; Відкрийте вкладку Settings головного інтерфейсу; в блоці ROI style можливо **змінити колір та прозорість створених  ROI** відповідно до ваших уподобань. Здійснення попереднього перегляду класифікації Інструменти післяоброблення ROI це полігони, що оконтурюють певний клас земного покриву, необхідні для навчання алгоритму класифікації. Щойно створені ROI являють собою тимчасові полігони, які розміщуються всередині групи Class_temp_group (за відсутності - додається автоматично) панелі Шари. В переліку шарів цю групу доцільно пермістити донизу, таким чином на зображенні буде видимою лише остання створена ROI (а всі інші будуть автоматично приховуватись). Необхідні входові дані це багато- або одноканальні растри та навчальний шейп-файл для створення ROI. В цьому уроці ми створимо набір каналів. Збереження ROI до шейп-файлу Графік розсіву Налаштування стилю класифікації Графік спектральної сигнатури Запустіть QGIS та завантажте растри каналів; створіть з навчальних даних кольорове композитне зображення (RGB=543), яке відповідно до пояснення `тут (пункт 2) <http://fromgistors.blogspot.com/2013/07/land-cover-classification-update.html>`_ є зручним для візуальної інтерпретації; запустіть модуль Напівавтоматичної класифікації (якщо панелі не з'явились, то натисніть кнопку  Show docks у Головному вікні інтерфейсу); Модуль Напівавтомативної класифікації використовує ГІС  SAGA для процесу класифікації. Алгоритми SAGA працюють лише з одноканальними растрами в якості входових даних. Тому, якщо входові дані є багатоканальним растром (єдиний спільний файл, що об'єднує декілька каналів), модуль Напівавтоматичної класифікації автоматично розщеплює входовий файл на одноканальні растри, що може зайняти деякий час залежно від розміру файлу. З метою оптимізації процесу класифікації (особливо для гіперспектральних зображень) доцільно використовувати одноканальні растри або розщепити файл зображення на окремі канали, як пояснюється  `тут (пункт 1) <http://fromgistors.blogspot.com/2013/07/working-with-multispectral-bands-in-qgis.html>`_ . Вкладка ``Scatter plot`` дозволяє розраховувати та унаочнювати графіки розсіву значень ROI, які є зручними для оцінки відокремленості ROI при виборі між двома каналами. Значення пікселів для двох растрових каналів унаочнюються як точки в двовимірному просторі. Нижче наведено початкові уроки, які знайомлять з основами роботи з модулем Напівавтоматичної класифікації. Рекомендуємо також завітати до блогу `From GIS to Remote Sensing <http://fromgistors.blogspot.com/search/label/Tutorial>` для ознайомлення з більш новими уроками, зокрема: Основний результат класифікації це растровий файл .tif; натисніть кнопку Perform  classification і виберіть каталог та файл для збереження результату (наприклад classification.tif); скористайтесь стилем класифікації з цього  `файлу  zip <http://hub.qgis.org/attachments/download/6004/classification.zip>`_ ; Цей крок необхідний для збереження створених ROI до навчального шейп-файлу. Уроки для початківців В блоці  ROI definition надрукуйте стислу характеристику ROI в полі Information (наприклад, water); ця характеристика не буде застосована в процесі класифікації, але вона корисна для розрізнення ROI; поле  ID (унікальний ідентифікатор класу) застосовується для класифікації земного покриву як входове, тому важливо щоб кожна категорія мала унікальне значення ID; ROI з ідентичними ID розглядаються як єдина ROI; тепер, залиште значення ID рівним 1; `Оцінка температури земної поверхні на підставі термального інфрачервоного каналу Landsat (англ.) <http://fromgistors.blogspot.com/2014/01/estimation-of-land-surface-temperature.html>`_; `Класифікація земного покриву орних угідь (англ.) <http://fromgistors.blogspot.com/2014/01/land-cover-classification-of-cropland.html>`_. якщо перемикач Record events in a Log file увімкнено, то під час обробки створюється та оновлюється файл журналу реєстрації змін; файл журналу реєстрації змін зберігається до каталогу модуля (розташованого в Вашому домашньому каталозі user/home ``.qgis2/python/plugins/SemiAutomaticClassificationPlugin``) під іменем ``__0semiautomaticclass.log``; декілька кнопок дозволяють перевірити встановлення програм ГІС SAGA, ГІС GRASS та геоалгоритмів QGIS; 