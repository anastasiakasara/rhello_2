setwd("~/rstudio")
getwd()
#setwd("c:\\Users\\natasa\\rwork")
set.seed(154)
######################################################################
means<-numeric(10000)
for (i in 1:10000){
  means[i]<-mean(runif(5)*10)
}
hist(means,ylim=c(0,1600),main='')
###############################################
x=runif(9)  # 9 RANDOM NUMBERS FROM  0 TO 9
x
y=runif(n=10,min=1,max=2)
yx1<-seq(2,20,by=)
d=seq(-pi,pi,length=50)

################################
a<-1
j=ifelse(runif(9)<.5,-a,a)
#print(j)
y=(j+1)/2
y
#####################################
#  Bernoulli : j=1  for probapility p , or j=0 for 1-p
pr=dbinom(j,1,p) # 1 means 1 trial 

# Binomial : 
j=20
n=100
p=.4
pr2=dbinom(j,n,p)  # pr2 is the probapility that an event with p=0.4 can happen j= 20 times  ,  in n= 100 trials 

pr3=pbinom(j,n,p) # the  probapility that an event with p=0.4 can happen in the first (or less) j=20 times, during n=100 trials
# 
pr3=rbinom(j,n,p) # finds the probapility of j=20 random numbers in n=100 trials have an event of p=0.4

pnorm(1.65,mean=0,sd=1,lowertail=TRUE)  # prob from infinity to q

###########################################################
d=replicate(n=4,rnorm(100,5,2)) 
?replicate
summary(d)
apply(d,2,sd) # 2 for columns
##########################
## repeats 5 times number 100
x<-c(rep(100,5))
###############################################################
#  Dice

dice <- sample(1:6, size=100 ,replace= T)
??sample

######################################################
# generate random numbers (here 1000 number) in [0,1]
random.uniform.1000<-runif(n=1000,min=0,max=1)
hist(random.uniform.1000)

#########################################################
# linear model
par(mfrow=c(2,2))
x1<-seq(2,20)
a=5
b=0.7
y1<-a+b*x1
plot(y1~x1,main='')
abline(a=5,b=0.7)  

d<-rnorm(length(x1),mean=y1,sd=2)
plot(d~x1)
abline(a=5,b=0.7)
y2<-lm(d~x1)
summary(y2) # notice the difference in the intercept and the slope between the estimate line (y2) and the real (y1)
confint(y2) # the coefficient intervals 
#                2.5 %    97.5 %
#(Intercept) 3.7132822 7.7415778
#x1          0.5074294 0.8352475

abline(reg=y2,lty=2,col="red",lwd=2) # the solid line is the true values , the dashed line is what we got from the simulated data

############################################################
# chi square distribution

curve(dchisq(x,df=1),0,9, col='blue', lty=2,xlim=c(0,9),ylim=c(0,1.5),ylab='chisquare distibution')
curve(dchisq(x,df=5),col="brown",lty=5,add=TRUE)
curve(dchisq(x,df=10),lty=1, col='green',add=TRUE)
legend(2,1,legend=c('dof=1','dof=5','dof=10'),lty=c(2,5,1),col=c('blue',col='brown','green'))


#dev.off()
###################### 
##### logic loop from ex.brownian

tp = 0.4

for (i in 2:N) {
  if ( (tim[i]<tp) &  (tp<tim[i+1]) )
    break 
  
  print(i)
}

#################################################
 x=matrix(data=c(1,2,3,4),nrow=2,ncol=2)
y=matrix(data,byrow=TRUE)

###################################################
subset(OS,proportion>0.1)
data$OS[OS<]

#####################################

#### tables 
table(data$x1,data$x2)  # show frequencies 
tapply(data$x1,data$x2,mean)
prop.table(table name)  ### sum of appearence of each value/sum of numbers of values
scale(name of table) ##  scale the values within a column so they have mean 0

split(data$x1,data$x2)  # data$x2 as factor




