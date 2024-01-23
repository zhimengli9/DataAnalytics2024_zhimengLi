EPI_data = read.csv('/Users/leezh1m9/Desktop/2010EPI_data.csv')
EPI_data
View(EPI_data)
attach(EPI_data)
fix(EPI_data)
EPI
tf<-is.na(EPI_data)
E<-EPI[!tf]
View(EPI_data)
summary(EPI)
fivenum(EPI,na.rm=TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.))
rug(EPI)
