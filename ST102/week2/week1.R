"Exercise 1"
lengths <- read.csv(file="lengths.csv",header=TRUE,sep=",")
summary(lengths$Guess)
mean(lengths$Guess)

median(lengths$Guess)
sd(lengths$Guess)


gss <- read.csv(file="gsseducation.csv",header=TRUE,sep=",")
hist(gss$EDUC,breaks=20)
summary(gss$EDUC)
sd(gss$EDUC, na.rm=TRUE)

summary(gss$SPEDUC)
sd(gss$SPEDUC, na.rm=TRUE)

summary(gss$PAEDUC)
sd(gss$PAEDUC, na.rm=TRUE)

summary(gss$MAEDUC)
sd(gss$MAEDUC, na.rm=TRUE)

attach(gss)
varnames <- c("EDUC","SPEDUC","PAEDUC","MAEDU")
boxplot(EDUC,SPEDUC,PAEDUC,MAEDUC,names=varnames)

plot(EDUC,SPEDUC)
plot(EDUC,PAEDUC)
plot(EDUC,MAEDUC)

"Addtional Exercise 1"
A <- c(11.3,12.5,13.0,12.0,12.2)
B <- c(7.4,7.0,11.2,13.3,22.1)
mean(A)
mean(B)
sd(A)
sd(B)

weights <- c(0.1,0.1,0.2,0.2,0.4)
weighted.mean(A, weights)
weighted.mean(B, weights)

gss <- read.csv(file="gsseducation.csv",header=TRUE,sep=",")
attach(gss)
EDUCGROUP<-NA
EDUCGROUP[EDUC<9]<-1
#EDUC<9
EDUCGROUP[8<EDUC & EDUC<=12]<-2
EDUCGROUP[12<EDUC & EDUC<=16]<-3
EDUCGROUP[16<EDUC]<-4
PAEDUCGROUP<-NA
PAEDUCGROUP[PAEDUC<9]<-1
PAEDUCGROUP[8<PAEDUC & PAEDUC<=12]<-2
PAEDUCGROUP[12<PAEDUC & PAEDUC<=16]<-3
PAEDUCGROUP[16<PAEDUC]<-4
educgroup <- table(PAEDUCGROUP,EDUCGROUP)
educgroup
prop.table(educgroup,1)

