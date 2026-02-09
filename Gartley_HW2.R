df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu','Richards','George','Ema','Samantha','Catherine'),
State=c('Alaska','California','Texas','North Carolina','California','Texas','Alaska','Texas','North Carolina','Alaska','California','Texas'),
Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))
df1#shows the data frame created
#lines 1-3 creates a data frame with 3 columns Name,State, and Sales 
aggregate(df1$Sales, by=list(df1$State), FUN=sum)
#creates sums based off the sales by state and outputs the data frame
library(dplyr)
#loads the library dplyr
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))
#appears to be the same thing but cleaner with correct column names but called a tibble? 
#part 2 
worldcup=read.csv("C:/Users/RJG11/Downloads/WorldCupMatches.csv")
num=nrow(worldcup)
print(num)
#852 rows
co=ncol(worldcup)
print(co)
#20 Columns 
summary(worldcup)
length(unique(worldcup$Stadium))
#181 Unique Locations 
mean(worldcup$Attendance,na.rm = TRUE)
# 45164.8 attendees 
worldcup %>% group_by(Home.Team.Name) %>% summarise(sum_Goals = sum(Home.Team.Goals))
worldcup %>% group_by(Year) %>% summarise(Avg_ATEND = mean(Attendance))
#you can see a positive overall growth throughout the years and trouble near major conflicts
#part 3
meta=read.csv("C:/Users/RJG11/Downloads/metabolite.csv")
alz <- meta %>% filter(Label == "Alzheimer")
#35 Alzheimer patients 
colSums(is.na(meta))
dope<- meta[!is.na(meta$Dopamine), ]
colSums(is.na(dope))
#from 20 to zero
medianval<-median(dope$c4.OH.Pro,na.rm=TRUE)
dope$c4.OH.Pro[is.na(dope$c4.OH.Pro)]<-medianval
#the check
dope$c4.OH.Pro

