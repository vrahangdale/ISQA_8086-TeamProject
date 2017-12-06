### Target Audience 
Property and Casualty Actuarial Managers are the target audience for our analysis. The responsibilities of these managers in general are:
*	Obtain premium and loss data using predefined or user created database procedures.
*	Calculate company loss and expense reserves.
*	Provides actuarial support in evaluating new product or product enhancement recommendations.
*	Recommends and prepares experience, expense or rate effect exhibits to support product recommendations.
*	Develops, recommends and implements operational plans and procedures.
*	Prepare the annual Permissible Loss Ratio Analysis.
*	Provide actuarial recommendations on corporate issues such as internal rate of return
*	Conducting other risk-analysis related-projects in at least one of the following areas: Loss control, standard industry practices regarding claim reviews, claim evaluations, strategic planning and analysis; merger and acquisition valuations; reinsurance program review and expert witness testimony.
### Decisions of Target Audience
Our analysis on the storm events will help the actuarial managers to perform their job at their best. It helps in making decisions regarding
*	Risk Analysis their own company during/after occurrence of natural disasters.
*	Evaluation of new products or enhancements in existing products provided by the company based on the previous observations/ analysis on various events including natural calamities.
*	Operational/ strategic plans required to be put in place.
*	Evaluate the annual Permissible Loss Ratio Analysis.
*	Claims raised during or after a natural calamity has occurred.
### Description of Storm Events Dataset
We have retrieved our data from NOAA's National Weather Service. The National Centers for Environmental Information (NCEI) regularly receives Storm Data from the National Weather Service (NWS). This data set consists of state wise occurrence of Event type in USA like Tornado, Thunderstorm Wind and Hail, Marine strong wind, Flash flood, Heavy rain, Heavy snow, Funnel Cloud, Extensive Heat and also contains data regarding locations, fatalities, injuries, damage, narratives and any other event specific information which can be used for information and analysis by business sectors, insurance companies, hazard mitigation, policy makers etc. (NCDC, 2017)
### Processing/ Data cleaning of Storm Events Dataset
We have used different set of columns for each of the research questions so that our analysis is oriented towards the target audience. For our analysis we have removed the 'none' values as R excludes all cases in which any of the inputs are missing by default; this can limit the amount of information available in the analysis. To represent results in better level of granularity, we have dropped the columns which have redundant data such as 'BEGIN_YEARMONTH', 'BEGIN_YEARMONTH', 'BEGIN_DATE_TIME', 'END_DATE_TIME', 'state_fips' as these values are combination of columns present in the data set. We also removed the columns 'EPISODE_NARRATIVE', 'event_narrative' and 'DATA_SOURCE' as these are nominal data and difficult to analyze them in R. We have checked for the duplicate values and removed the duplicate values for each question.
### Persuasive Argument
Based on the results from our analysis on the storm events data, the actuarial managers need recommend changes to the existing products, premiums and their coverages available in the natural calamity prone areas depending on the extent of property damage and frequency of calamity occurrence. Also, encourage their support staff to implement certain operational plans and evaluate the credibility of the claims raised with the tag of natural calamities.
#### Word Count
#### Reference
National Centers for Environmental Information.(2017) Strom Event database 2017, from https://www.ncdc.noaa.gov/stormevents/
