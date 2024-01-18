zahra<-read.csv('Titanic.csv')

head(zahra, 5)

str(zahra)
zahra$Name<-as.character(zahra$Name)
str(zahra)

zahra$Survived<-as.factor(zahra$Survived)
str(zahra$Survived)
zahra$PassengerId<-as.factor(zahra$PassengerId)
str(zahra$PassengerId)

zahra$Ticket<-as.factor(zahra$Ticket)
zahra$Ticket<-as.integer(zahra$Ticket)
str(zahra$Ticket)

pfare<-zahra[zahra$Fare=='NA',c(4)]

plower<-zahra[zahra$Pclass==3,]

malesurv<-zahra[zahra$Survived==1
                &zahra$Sex=='male',]

femaleunsur<-zahra[zahra$Survived==0
                &zahra$Sex=='female',]

med_agey<-median(zahra[zahra$Survived==1,'Age'],na.rm = T)
med_agen<-median(zahra[zahra$Survived==0,'Age'],na.rm = T)
zahra[is.na(zahra$Age)&zahra$Survived==1,'Age']<-med_agey
zahra[is.na(zahra$Age)&zahra$Survived==0,'Age']<-med_agen

mfare<-median(zahra[,'Fare'],na.rm = T)
pasmfare<-zahra[zahra$Fare>mfare,]

mage<-median(zahra[,'Age'],na.rm = T)
zahra[is.na(zahra$Age)&zahra$Pclass=='3','Age']<-mage

zahra$Child[zahra$Age<18]='yes'
zahra$Child[zahra$Age>=18]='no'

zahra$Survived<-as.integer(zahra$Survived)
zahra$surnumbers[zahra$Survived==2]=1
zahra$surnumbers[zahra$Survived==1]=0
surchild<-zahra[zahra$surnumbers==1
                &zahra$Child=='yes',]
suradult<-zahra[zahra$surnumbers==1
                &zahra$Child=='no',]
#zahra<-zahra %>% mutate(r = Survived/)

paslowsur<-zahra[zahra$Pclass=='3'
                 &zahra$Survived==2,]
