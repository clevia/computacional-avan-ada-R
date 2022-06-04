y<- vector("numeric")
fda<- function(y) log(y)
u=runif(10000)
y<-exp(u)
hist(y, prob=T)
x<-y
curve(1/x,1, exp(1), add=T, col=4)