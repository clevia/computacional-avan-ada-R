#Clevia Bento de Oliveira

#EXERCÍCIO 2

#a urna contém 15 bolas azuis e 27 vermelhas, totalizando 42 bolas
#serão sorteadas 5 bolas
#calculando a probabilidade de sair apenas 1 bola azul e as demais vermelhas
#sabendo que o problema segue uma distribuição hipergeométrica, vamos aplicar na fórmula

#considere c1 como a combinação individual de 1 bola azul das 15 bolas azuis 

c1<- (factorial(15)/(factorial(1)*(factorial(15-1))))

#considere c2 como a combinação individual de 4 bolas vermelhas das 27 bolas vermelhas 

c2<- (factorial(27)/(factorial(4)*(factorial(27-4))))

#considere c3 como a combinação de 5 bolas das 42 bolas da urna

c3<- (factorial(42)/(factorial(5)*(factorial(42-5))))

#aplicando da fórmula da distribuição hipergeométrica, temos a probabilidade
#de sair apenas uma bola azul

hp<- (c1*c2)/c3
hp

#agora calculando a probabilidade de sair todas as 5 bolas azuis

#considere ca como a combinação de 5 bolas azuis em 15 bolas azuis

ca<- (factorial(15)/(factorial(5)*(factorial(15-5))))

#cb é a combinação de 0 bolas em 27, ou seja, será igual 1 

cb<-1

#aplicando na fórmula

hp2<-(ca*cb)/c3
hp2

#graficos da função de probabilidade e FDA

m<-15
n<-27
k<-5
x<-c(0:6)

fprob<- plot(dhyper(x,m,n,k),type = "b", main = "Função de Probabilidade")

fda<- plot(phyper(x,m,n,k), type = "b", main = "FDA")

#quartis

summary(dhyper(x,m,n,k))


