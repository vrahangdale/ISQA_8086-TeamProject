## The following program is to plot the stime series variation of the maximum occuring events ovwe the years over the yeras
# Based on the maximum occuring events graphs for each year we know that tunderstorm happen most frequently 

#setting the working directory and Reading the dataset into the r environment-

dataset2016 <- read.csv('StormEvents_details-ftp_v1.0_d2016_c20170918.csv',header = TRUE,stringsAsFactors = F)
dataset2015 <- read.csv('StormEvents_details-ftp_v1.0_d2015_c20170918.csv',header = TRUE,stringsAsFactors = F)
dataset2014 <- read.csv('StormEvents_details-ftp_v1.0_d2014_c20170718.csv',header = TRUE,stringsAsFactors = F)
dataset2013 <- read.csv('StormEvents_details-ftp_v1.0_d2013_c20170519.csv',header = TRUE,stringsAsFactors = F)
dataset2012 <- read.csv('StormEvents_details-ftp_v1.0_d2012_c20170519.csv',header = TRUE,stringsAsFactors = F)
dataset2011 <- read.csv('StormEvents_details-ftp_v1.0_d2011_c20170519.csv',header = TRUE,stringsAsFactors = F)

# creating the subset pf the data by selecting the columns required-
dataset2016 <- dataset2016[,c(8,9,11,12,13,18,25,26)]
dataset2015 <- dataset2015[,c(8,9,11,12,13,18,25,26)]
dataset2014 <- dataset2014[,c(8,9,11,12,13,18,25,26)]
dataset2013 <- dataset2013[,c(8,9,11,12,13,18,25,26)]
dataset2012 <- dataset2012[,c(8,9,11,12,13,18,25,26)]
dataset2011 <- dataset2011[,c(8,9,11,12,13,18,25,26)]


dataall <- rbind(dataset2016,dataset2015,dataset2014,dataset2013,dataset2012,dataset2011)
# Multiply the values of amount in damage_property and damage_crops containing M in data by 1000 to turn into K and remove M from data
# Remove K from data
dataall_update <- dataall
index1 <- (substr(dataall_update$DAMAGE_PROPERTY,nchar(dataall_update$DAMAGE_PROPERTY),nchar(dataall_update$DAMAGE_PROPERTY)))=="M"
index2 <- (substr(dataall_update$DAMAGE_CROPS,nchar(dataall_update$DAMAGE_CROPS),nchar(dataall_update$DAMAGE_CROPS)))=="M"
index3 <- (substr(dataall_update$DAMAGE_PROPERTY,nchar(dataall_update$DAMAGE_PROPERTY),nchar(dataall_update$DAMAGE_PROPERTY)))=="K"
index4 <- (substr(dataall_update$DAMAGE_CROPS,nchar(dataall_update$DAMAGE_CROPS),nchar(dataall_update$DAMAGE_CROPS)))=="K"


dataall_update$DAMAGE_PROPERTY[index1] <- 
  as.numeric(substr(dataall_update$DAMAGE_PROPERTY[index1],1,nchar(dataall_update$DAMAGE_PROPERTY[index1])-1))*1000  

dataall_update$DAMAGE_CROPS[index2] <- 
  as.numeric(substr(dataall_update$DAMAGE_CROPS[index2],1,nchar(dataall_update$DAMAGE_CROPS[index2])-1))*1000  

dataall_update$DAMAGE_PROPERTY[index3] <- 
  as.numeric(substr(dataall_update$DAMAGE_PROPERTY[index3],1,nchar(dataall_update$DAMAGE_PROPERTY[index3])-1))

dataall_update$DAMAGE_CROPS[index4] <- 
  as.numeric(substr(dataall_update$DAMAGE_CROPS[index4],1,nchar(dataall_update$DAMAGE_CROPS[index4])-1)) 

#changing fields into numeric
dataall_update$DAMAGE_PROPERTY <- as.numeric(as.character(dataall_update$DAMAGE_PROPERTY))
dataall_update$DAMAGE_CROPS <- as.numeric(as.character(dataall_update$DAMAGE_CROPS))

#creating dataset removing data having NA in value
dataall_update_rm<- na.omit(dataall_update)


#creating dataset replacing data having NA with 0
dataall_update_na<- dataall_update
dataall_update_na$DAMAGE_PROPERTY[is.na(dataall_update$DAMAGE_PROPERTY) ] <- 0

dataall_update_na$DAMAGE_CROPS[is.na(dataall_update_na$DAMAGE_CROPS) ] <- 0

#Add column which contains the sum of amount of damage property and damage crops
dataall_na_addcol <- dataall_update_na
dataall_na_addcol$DAMAGE_OVERALL <- (dataall_na_addcol$DAMAGE_PROPERTY + dataall_na_addcol$DAMAGE_CROPS)



# plotting

dataall_na_addcol$date <- as.POSIXct(dataall_na_addcol$BEGIN_DATE_TIME,format = "%d-%b-%y %H:%M:%S")
# making subset of the damage as thuderstorm is the most occuring event each year-
dataset_thunder <- subset(dataall_na_addcol,EVENT_TYPE=="Thunderstorm Wind")


dataset_thunder <- dataset_thunder[c(9,10)]
dataset_thunder$date <- as.Date(dataset_thunder$date)

dataset_thunder1 <- subset(dataset_thunder,subset = DAMAGE_OVERALL>0 & DAMAGE_OVERALL<50000 , select = c(DAMAGE_OVERALL,date))
dataset_thunder2 <- subset(dataset_thunder,subset = DAMAGE_OVERALL<50000, select = c(DAMAGE_OVERALL,date))

ggplot(dataset_thunder1,aes(date,DAMAGE_OVERALL))+geom_line()

gg_tsplot<-ggplot(dataset_thunder1, aes(date, DAMAGE_OVERALL)) +
  geom_line(na.rm=TRUE) +  
  ggtitle("Thunderstorm Data variation over 2011-2016") +
  xlab("Date") + ylab("Number of Events") +
  scale_x_date(labels=date_format (" %y")) +
  theme(plot.title = element_text(lineheight=.8, face="bold", 
                                  size = 20)) +
  theme(text = element_text(size=18))
gg_tsplot
smooth_ts<- gg_tsplot+ stat_smooth(colour="green")
smooth_ts

ts_thunder<- ts(dataset_thunder1$DAMAGE_OVERALL,start=c(2011,1),end=c(2016,12),frequency = 12)

plot(ts_thunder, type="l",col="blue", xlab = "Date",ylab="Number of events", main = "Time series of Thunderstorm")

# Creating plot for top 5 damage causing events- 1. Flash Flood
dataset_flashflood <- subset(dataall_na_addcol,EVENT_TYPE=="Flash Flood")
dataset_flashflood <- dataset_flashflood[c(9,10)]
dataset_flashflood$date <- as.Date(dataset_flashflood$date)
dataset_flashflood1 <- subset(dataset_flashflood,subset = DAMAGE_OVERALL>0  , select = c(DAMAGE_OVERALL,date))
ggplot(dataset_flashflood1,aes(date,DAMAGE_OVERALL))+geom_line()+ggtitle("Flash Flood Damage Variation over 2011-2016") +xlab("Date") + ylab("Number of Event")



ts_flashflood<- ts(dataset_flashflood1$DAMAGE_OVERALL,start=c(2011,1),end=c(2016,12),frequency = 12)

plot(ts_flashflood, type="l",col="blue", xlab = "Date",ylab="Number of events", main = "Time series of Flash Flood")

# 2. Flood
dataset_flood <- subset(dataall_na_addcol,EVENT_TYPE=="Flood")
dataset_flood <- dataset_flood[c(9,10)]
dataset_flood$date <- as.Date(dataset_flood$date)
dataset_flood1 <- subset(dataset_flood,subset = DAMAGE_OVERALL>0  , select = c(DAMAGE_OVERALL,date))
ggplot(dataset_flood1,aes(date,DAMAGE_OVERALL))+geom_line()+ggtitle("Flood Damage Variation over 2011-2016") +xlab("Date") + ylab("Number of Event")



ts_flood<- ts(dataset_flood1$DAMAGE_OVERALL,start=c(2011,1),end=c(2016,12),frequency = 12)

plot(ts_flood, type="l",col="blue", xlab = "Date",ylab="Number of events", main = "Time series of Flood")

# 3. Hail
dataset_hail <- subset(dataall_na_addcol,EVENT_TYPE=="Hail")
dataset_hail <- dataset_hail[c(9,10)]
dataset_hail$date <- as.Date(dataset_hail$date)
dataset_hail1 <- subset(dataset_hail,subset = DAMAGE_OVERALL>0  , select = c(DAMAGE_OVERALL,date))
ggplot(dataset_hail1,aes(date,DAMAGE_OVERALL))+geom_line()+ggtitle("Hail Damage Variation over 2011-2016") +xlab("Date") + ylab("Number of Event")



ts_hail<- ts(dataset_hail1$DAMAGE_OVERALL,start=c(2011,1),end=c(2016,12),frequency = 12)

plot(ts_hail, type="l",col="blue", xlab = "Date",ylab="Number of events", main = "Time series of Hail")

# 4. Hurricane

dataset_hurricane <- subset(dataall_na_addcol,EVENT_TYPE=="Hurricane")
dataset_hurricane <- dataset_hurricane[c(9,10)]
dataset_hail$date <- as.Date(dataset_hail$date)
dataset_hurricane1 <- subset(dataset_hurricane,subset = DAMAGE_OVERALL>0  , select = c(DAMAGE_OVERALL,date))
ggplot(dataset_hurricane1,aes(date,DAMAGE_OVERALL))+geom_line()+ggtitle("Hurricane Damage Variation over 2011-2016") +xlab("Date") + ylab("Number of Event")



ts_hurricane<- ts(dataset_hurricane1$DAMAGE_OVERALL,start=c(2011,1),end=c(2016,12),frequency = 12)

plot(ts_hurricane, type="l",col="blue", xlab = "Date",ylab="Number of events", main = "Time series of Hurricane")

# 5. Tropical Storm

dataset_TropicalStorm <- subset(dataall_na_addcol,EVENT_TYPE=="Tropical Storm")
dataset_TropicalStorm <- dataset_TropicalStorm[c(9,10)]
dataset_TropicalStorm$date <- as.Date(dataset_TropicalStorm$date)
dataset_TropicalStorm1 <- subset(dataset_TropicalStorm,subset = DAMAGE_OVERALL>0  , select = c(DAMAGE_OVERALL,date))
ggplot(dataset_TropicalStorm1,aes(date,DAMAGE_OVERALL))+geom_line()+ggtitle("Tropical Damage Variation over 2011-2016") +xlab("Date") + ylab("Number of Event")



ts_TropicalStorm<- ts(dataset_TropicalStorm1$DAMAGE_OVERALL,start=c(2011,1),end=c(2016,12),frequency = 12)

plot(ts_TropicalStorm, type="l", col="blue", xlab = "Date",ylab="Number of events", main = "Time series of Tropical storm")
