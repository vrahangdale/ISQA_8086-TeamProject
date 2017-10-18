
# **_Strom Event Dataset _**

## About dataset

The National Centers for Environmental Information (NCEI) regularly receives Storm Data from the National Weather Service (NWS). This data set consists of state wise occurrence of Event type in USA like Tornado, Thunderstorm Wind and Hail, Marine strong wind, Flash flood, Heavy rain, Heavy snow, Funnel Cloud, Extensive Heat and also contains data regarding locations, fatalities, injuries, damage, narratives and any other event specific information which can be used for information and analysis by business sectors, insurance companies, hazard mitigation, policy makers etc. (NCDC, 2017)

## Data for our analysis

We are going to use the data collected over a period of 6 consecutive years i.e. from 2011-2016 and refine it through data cleaning using R for our analysis.

The Strom Event dataset is having 51 attributes overall, few of which are State_FIPS, Storm magnitude with storm events type in particular location, and this data can be used in personal, educational, and academic purposes.

# The file format is CSV (Comma-Separated Values) text files which represent a dump or export of the Storm Events Database

# CSV file info
All the csv files have 51 columns (attributes)
* StormEvents_details-ftp_v1.0_d2011_c20170519.csv file has 79092 rows
* StormEvents_details-ftp_v1.0_d2012_c20170519.csv file has 64504 rows
* StormEvents_details-ftp_v1.0_d2012_c20170519.csv file has 59986 rows
* StormEvents_details-ftp_v1.0_d2012_c20170519.csv file has 11975977040 rows
* StormEvents_details-ftp_v1.0_d2012_c20170519.csv file has 11644627304 rows
* StormEvents_details-ftp_v1.0_d2012_c20170519.csv file has 11281684247 rows

   ## Some of the sample headers.

   > EVENT_ID	STATE	STATE_FIPS	YEAR	MONTH_NAME	EVENT_TYPE	CZ_TYPE	CZ_FIPS	CZ_NAME	WFO	BEGIN_DATE_TIME	CZ_TIMEZONE	END_DATE_TIME	INJURIES_DIRECT  	INJURIES_INDIRECT	DEATHS_DIRECT	DEATHS_INDIRECT	DAMAGE_PROPERTY	DAMAGE_CROPS	SOURCE	          MAGNITUDE

   678791 NEW JERSEY	34	2017	April	Thunderstorm Wind	C	15	GLOUCESTER	PHI	4/6/2017      15:09	EST-5	4/6/2017      15:09	           0	              0	                       0	  0			                              Trained Spotter	          52
   679188	ALABAMA	    1	2017	April	 Hail	            C	89	MADISON	HUN	    4/5/2017     15:55	CST-6	4/5/2017      15:55	           0	              0	                       0	  0			                              Broadcast Media	           1    
##  For more information about attributes click [here](https://www.ncdc.noaa.gov/stormevents/ftp.jsp).

## Reference
National Centers for Environmental Information.(2017) Strom Event database 2017, from https://www.ncdc.noaa.gov/stormevents/

 ### 2. Specifically identify any intellectual policy constraints, or lack thereof (licensing).
 ### 3. 1 paragraph description of the metadata: what information is available to help you interpret and understand the data?
 ### 4. Identify any issues you have encountered with the data: missing values, unstandardized content, entity matching, etc.
 ### 5. 1 paragraph description of your rationale for the steps you’re taking to remediate data. For example, if you need to fill in empty fields, specify what value you chose and why.
 ### 6. A script or step-by-step textual description (or a combination) that documents your data cleaning process with enough detail for replication.

#### Contributors-
Chandra
Shravya
Pradeep
Vaibhav
