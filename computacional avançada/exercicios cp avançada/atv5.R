library(mc2d)
#atividade 5
x<-vector("numeric")

for(i in 1:10000){
  ber<-rbern(1,1/3)
  if(ber < 1) x[i]<-0
  else x[i]<-1
}

barplot(table(x))

