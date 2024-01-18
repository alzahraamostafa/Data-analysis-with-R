zahra<-read.csv("companies.csv", na.strings = c(""))

profit<-zahra[zahra$Profit>1000000,c(2,10)]

# ITSoftware<-zahra[zahra$Industry=='IT Services'
#           &zahra$Industry=='Software',]
IT<-zahra[zahra$Industry=='IT Services',]
Software<-zahra[zahra$Industry=='Software',]
ITSoftware<-rbind(IT,Software)

date<-zahra[zahra$Inception>2011,]

empex<-zahra[zahra$Expenses<1000000 
                & zahra$Employees>100,]

zahra$Revenue<-gsub(" Dollars","", zahra$Revenue)
zahra$Revenue<-gsub(",","", zahra$Revenue)
zahra$Revenue<-gsub("\\$","", zahra$Revenue)

zahra$levels[zahra$Revenue<=150]='Low'
zahra$levels[zahra$Revenue>=150 
             & zahra$Revenue<=300]='Mediam'
zahra$levels[zahra$Revenue>300]='High'
