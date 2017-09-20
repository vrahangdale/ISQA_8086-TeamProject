## This markdown document explains the dataset analysis - Storm Event data  with respect to research questions, planned timeline for completing the project, projected effort allocation (who will do which tasks), and target audience for the analysis.

### This document includes:-
     1. Introduction of Strom Event Data Set
     2. Draft Research Questions
     3. Project Timeline
     4. Projected Effort Allocation
     5. Target Audience


## 1. Introduction of StromEvent Data set

The NCEI Storm Events Database contains various types of storm reports searchable by state, county, date, and event type from 1950 to the present. Data are also available in comma-separated value (CSV) files, as entered by NOAA's National Weather Service (NWS).
> EVENT_ID	STATE	STATE_FIPS	YEAR	MONTH_NAME	EVENT_TYPE	CZ_TYPE	CZ_FIPS	CZ_NAME	WFO	BEGIN_DATE_TIME	CZ_TIMEZONE	END_DATE_TIME	INJURIES_DIRECT  	INJURIES_INDIRECT	DEATHS_DIRECT	DEATHS_INDIRECT	DAMAGE_PROPERTY	DAMAGE_CROPS	SOURCE	          MAGNITUDE

   678791 NEW JERSEY	34	2017	April	Thunderstorm Wind	C	15	GLOUCESTER	PHI	4/6/2017      15:09	EST-5	4/6/2017      15:09	           0	              0	                       0	  0			                              Trained Spotter	          52
   679188	ALABAMA	    1	2017	April	 Hail	            C	89	MADISON	HUN	    4/5/2017     15:55	CST-6	4/5/2017      15:55	           0	              0	                       0	  0

CZ - County/Zone
LAT/LON - Lattitude/Longitude
An Episode is an entire storm system and can contain many different types of events.
An Event is an individual type of storm event. (Thunderstorm Wind, Hail, Tornado and Flood are events)
WFO is Weather Forecast Offices

The Rawdataset can be found [here](https://github.com/vrahangdale/ISQA_8086-TeamProject/tree/master/RawDataset)    

## 2. Draft Research Question

## 3. Project Timeline




## 4. Project Effort Allocation


| Task                                      | Description                                                                                                                                                                       | Chandra | Shravya | Vaibhav | Pradeep | Task Week Number |
|-------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------|---------|---------|---------|------------------|
| Work plan & RQ's                          | Planning the projects duration and task allocated to each member                                                                                                                  | X       | X       | X       | X       | Week 5           |
| Data cleaning                             | Data Cleaning in Microsoft Excel and R according to required analysis decided by the team.                                                                                        | X       |         | X       | X       | Week 9           |
| Documentation draft                       | Documentation of the actions performed on the dataset for analysis.                                                                                                               |         | X       |         |         | Week 9           |
| Team progress meeting                     | Work on the potential problem and pre-planned future tasks. Assigned tasks and follow-up for completion of tasks. Meeting with the professors for further advice on the project.  | X       | X       |         |         | Week 5           |
| R Script Draft                            | Write R script for data analysis and perform discriptive analysis and ANOVA.                                                                                                      | X       | X       |         | X       | Week 11          |
| R Plot Draft                              | Use R to create a plot of analysis. Interpretation and analysis of plot and significance of plot.                                                                                 | X       | X       | X       | X       | Week 12          |
| Audience Persona - Project Pre-evaluation | Review and re-correct the developed Data Analysis and documentation. Make assure that model is free from backlogs.Deliver data analysis model to target audience for review       | X       | X       | X       | X       | Week 14          |
| Presentation                              | Deliver the final data analysis to the stakeholders and target audience with project standards                                                                                    | X       | X       | X       | X       | Week 15          |
| Github Package                            | All the analysis and interpretations will be available in git hub with usage policy.                                                                                              | X       | X       | X       | X       | Week 15          |


      Research Question-Chandra and Vaibhav
      Project Timeline- Vaibhav
      Target Audience- Shravya
      Ghantt Chart- Pradeep

## 5. Target Audience
  * Climate data is used by scientists in their research and analysis of past, current, and future climate change. But today, the information is also  commonly used by the policy makers to make informed strategies to prevent and adapt to climate change, and the scientists also recommend the increased availablity of data to public to reduce their vulnerability to climatic changes.

## Reference
    National Centers for Environmental Information.(2017) Strom Event database 2017, from https://www.ncdc.noaa.gov/stormevents/
