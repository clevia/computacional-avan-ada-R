#usando comando for
p<-0.5
for(i in 1000000){
  U<-runif(i)
  q<- 1-p
  Geo<-floor(log(U)/log(q))
}

barplot(table(Geo))

#vetorialmente

i=1
p=0.5
x<-vector("numeric")
while(i<1000000){
  u<-runif(1)
  q<-1-p
  geo<-floor(log(u)/log(q))
  x[i]<-geo
  i=1+i
}

barplot(table(x))

#tempo de execução

system.time(barplot(table(Geo)))

system.time(barplot(table(x)))
