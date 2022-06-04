funcao<- function(n=1){
  pj<- c(0.3, 0.2 , 0.35, 0.15)
  x<- rep(NA, n)
  for(j in 1:n) {
    while (is.na(x[j])) {
      U1<- runif(1)
      y<-floor(4*U1)+1
      
      U2<-runif(1)
      if(U2 <= (pj[y]/0.35)) x[j]=y
      
    }
  }
  return(x)
}

barplot(table(funcao(10000)))


