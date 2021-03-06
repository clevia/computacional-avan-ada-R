#Clevia Bento de Oliveira

#EXERC�CIO 2

#a urna cont�m 15 bolas azuis e 27 vermelhas, totalizando 42 bolas
#ser�o sorteadas 5 bolas
#calculando a probabilidade de sair apenas 1 bola azul e as demais vermelhas
#sabendo que o problema segue uma distribui��o hipergeom�trica, vamos aplicar na f�rmula

#considere c1 como a combina��o individual de 1 bola azul das 15 bolas azuis 

c1<- (factorial(15)/(factorial(1)*(factorial(15-1))))

#considere c2 como a combina��o individual de 4 bolas vermelhas das 27 bolas vermelhas 

c2<- (factorial(27)/(factorial(4)*(factorial(27-4))))

#considere c3 como a combina��o de 5 bolas das 42 bolas da urna

c3<- (factorial(42)/(factorial(5)*(factorial(42-5))))

#aplicando da f�rmula da distribui��o hipergeom�trica, temos a probabilidade
#de sair apenas uma bola azul

hp<- (c1*c2)/c3
hp

#agora calculando a probabilidade de sair todas as 5 bolas azuis

#considere ca como a combina��o de 5 bolas azuis em 15 bolas azuis

ca<- (factorial(15)/(factorial(5)*(factorial(15-5))))

#cb � a combina��o de 0 bolas em 27, ou seja, ser� igual 1 

cb<-1

#aplicando na f�rmula

hp2<-(ca*cb)/c3
hp2

#graficos da fun��o de probabilidade e FDA

m<-15
n<-27
k<-5
x<-c(0:6)

fprob<- plot(dhyper(x,m,n,k),type = "b", main = "Fun��o de Probabilidade")

fda<- plot(phyper(x,m,n,k), type = "b", main = "FDA")

#quartis

summary(dhyper(x,m,n,k))


