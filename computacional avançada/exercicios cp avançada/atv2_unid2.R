x<- seq(0,1,by=0.01)
fx<- 20*x*((1-x)^3)
plot(x,fx,type = "l", main = "FDP")

Fx<- 10*(x^2)-20*(x^2)+15*(x^4)-4*(x^5)
plot(x,Fx, type="l", main = "FDA" )
