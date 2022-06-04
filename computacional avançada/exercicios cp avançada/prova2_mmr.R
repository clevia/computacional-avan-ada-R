q<-matrix(c(0.2,0.2,0.2,0.1), nrow = 2, byrow = T)
q
i<-diag(1,2)
i
m<-solve(i-q)
m
r <- matrix(c(0.1,0.2,0.1,0.1,0.3,0.1,0.1,0.3),nrow = 2);r
m%*%r