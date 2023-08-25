devtools::install_github("apache/arrow/r")
library(arrow)
Data<-read_parquet("C:/Users/osndl.keshavk/Desktop/Serriculture/1.11Reshamandi_Data_for_Analysis.parquet", as_tibble = TRUE)
install.packages("arrow")
library(arrow)
library(dplyr)
library(lubridate)
Data<-read_parquet("C:/Users/osndl.keshavk/Desktop/Serriculture/1.11Reshamandi_Data_for_Analysis.parquet", as_tibble = TRUE)
saveRDS(Data, file = "Data2.rds")
Data2<-readRDS(file = "Data2.rds")

Data2$"__index_level_0__"<- NULL



colnames(Data2)[colnames()]


Data2$avg_tmax_tmin<- NULL

colnames(Data2)
Data2$Village_concate<- NULL

Data2<- Data2 %>%
                mutate(Sunshine=NA,WSmax=NA,RF=NA,
                       RHavg=rh,RHmax=NA,RHmin=NA,
                       Srad=NA,Tdew=NA,
                      Tmax=tmax,Tmin= tmin, WSavg=NA)
Data2$rh<-NULL
Data2$tmax<-NULL
Data2$tmin<- NULL

Data2$Date_R<- as.Date(Data2$Date)
Data2$Date<-NULL
Data2$year<- year(Data2$Date_R)
Data2$Datayear<- Data2$year   
Data2$mth<- month(Data2$Date_R)
Data2$monthday<- as.numeric(format(Data2$Date_R, format="%m%d"))
Data2$adj_year<- year(Data2$Date_R)
                      