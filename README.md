PySpark Training Assignment
---------------------------

Statistical Analysis and Visualization of Indian weather data from 2000-2013<br>

The dataset contains information from over 1300 weather stations distributed over 535 districts in India. It contains major parameters such as Minimum Temperature(C), Maximum Temperature(C), Precipitation(mm) and Relative Humidity. The data is available as daily readings at station level.

The data has been analysed using PySpark and Tableau. The readings were aggregated at district level before analysis. Most of the analysis is carried out at a monthly level.

[Indian Weather Summary[2000-2013]](https://public.tableau.com/views/WeatherAnalysis_16014109382880/IndianWeatherOvertheYears?:language=en&:display_count=y&publish=yes&:origin=viz_share_link)

[Indian Weather Stations](https://public.tableau.com/views/WeatherStations_16012881337010/DistrictMap?:language=en&:display_count=y&publish=yes&:origin=viz_share_link)


File Guide
----------

- Assignment_1_DataLoading.html : HTML file for notebook
- Assignment_1_DataLoading.ipynb : Data Download and Extraction
- Assignment_2_WeatherStationMapping.html : HTML file for notebook
- Assignment_2_WeatherStationMapping.ipynb : Data Cleaning for WeatherStations.csv and Mapping weather stations to closest IMD Station
- Assignment_3_WeatherDataPreprossing.html : HTML file for notebook
- Assignment_3_WeatherDataPreprossing.ipynb : Filtering and staging required weather data files
- Assignment_4_WeatherDataMerging.html : HTML file for notebook
- Assignment_4_WeatherDataMerging.ipynb : Aggregating data from weather data files at district level and adding location details.
- Assignment_5_Analysis.html : HTML file for notebook
- Assignment_5_Analysis.ipynb : Statistical Analysis and Visualization of Data
- Datasets:
   - 2000-2013 : Directory holding original files
      - WeatherStation.csv : List of IMD Weather Stations
      - StationsID.csv : List of StationIDs present in data files and their geographical coordinates
      - StationsID.txt : Text file containing filenames and first record of each file 
      - generateIdLocMap.sh: Bash Script for generating StationsID.txt from original data files
   - Output : Staging Directory for intermediate outputs 
      - WeatherData.csv : Data of stations mapped to IMD Stations
      - WeatherDistrictData.csv : Data aggregated at District Level for analysis
      - WeatherStationsId.csv : List of Districts and StationIDs mapped to each District
      - WeatherStationsIdExport.csv : List of Districts and StationIDs mapped to each District(Exported to Tableau)
   - Results : Directory holding final result files


Data Sources
------------

List of Weather Stations:
   - Provided by India Meteorological Department
   - [Link](http://www.imdpune.gov.in/ndc_new/stations/DRMS_STN.html)

Weather Data:
   - Provided by Texas A&M University
   - [Link](https://globalweather.tamu.edu/)
   - _Note_: Data has not been uploaded due to size constraints. The original data downloaded contained information for over 5000 stations in the Indian Subcontinent. The data has been filtered to match to the closest weather station from the list of weather stations provided by IMD.
   

Assignment
----------
Carry out statistical analysis using dataset mentioned below using DataFrames.  Use appropriate transformations, UDFs, and UDAFs wherever necessary.  Generate a report of your findings.  You have to find appropriate datasets yourselves. Explain all the steps of your analytics workflow.  The report msut be as comprehensive as possible.
   - India’s weather data for the past 1 decade.
