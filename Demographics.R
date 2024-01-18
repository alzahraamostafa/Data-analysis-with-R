zahra<-read.csv("demographics.csv")
na.strings = c("")

zahra$carcat[zahra$carcat=='Economy']='Low'
zahra$carcat[zahra$carcat=='Standard']='Mediam'
zahra$carcat[zahra$carcat=='Luxury']='High'

malecol<-zahra[zahra$gender=='Male'
               &zahra$educ=='College degree',]

femaleret<-zahra[zahra$gender=='Female'
               &zahra$retired=='Yes',]


zahra$educ[zahra$educ=='Did not complete high school']='1'
zahra$educ[zahra$educ=='High school degree']='2'
zahra$educ[zahra$educ=='Some college']='3'
zahra$educ[zahra$educ=='College degree']='4'
