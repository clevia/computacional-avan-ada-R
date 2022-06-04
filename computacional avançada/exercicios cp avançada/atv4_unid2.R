funcao<- function(n=5000){
  x<- rep(NA, n)
  for (i in 1:n) {
    while(is.na(x[i])) {
    u1<- runif(1)
    y<-(-log(u1))
    u2<-runif(1)
    
    if(u2<= exp((-(y-1)^2)/2))
      x[i]<- -y
    }
  }
return(x)
}

hist(table(x))
