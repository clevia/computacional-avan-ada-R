install.packages("survey")
"survey"
install.packages("samplingbook")
library("TeachingSampling")

U=c("fulana","beltrano","cicrana","elano", "eleana","eteceterano", "deltrana","estatisticando","alfa","omega")
N=length(U)
n=5
sam=S.SI(N,n,e=runif(N))
amostra=U[sam]
amostra
############################################

nomes=c("Fulana", "Beltrano", "Cicrana", "Elano", "Eneana",
        "Eteceterano", "Deltrana", "Estatisticando", "Alfa", "Ômega")
idade=c(27,28,35,19,22,48,35,40,28,33)
peso=c(79.5,80.2,69.0,73.0,75.5,80.1,65,79,75,74)
sexo=as.factor(c("F","M","F","M","F","M","F","M","F","M"))
U=data.frame(nomes,idade,peso,sexo)

head(U)

#Tamanho da população(cadastro)
N=length(U$nomes)
#Tamanho da amostra
n=5
#Seleção dos elementos da amostra
sam=S.SI(N,n,e=runif(N))
#Amostra selecionada
amostra=U[sam,]

#Estimador HT para a média de idade
E.SI(N,n,amostra$idade)[1,2]/N

###############################

library(TeachingSampling)
nomes=c("Fulana", "Beltrano", "Cicrana", "Elano", "Eneana", "Eteceterano",
        "Deltrana", "Estatisticando", "Alfa", "Ômega")
idade=c(27,28,35,19,22,48,35,40,28,33)
peso=c(79.5,80.2,69.0,73.0,75.5,80.1,65,79,75,74)
sexo=as.factor(c("F","M","F","M","F","M","F","M","F","M"))
U=data.frame(nomes,idade,peso,sexo)
#Tamanho da população(cadastro)
N=length(U$nomes)
#Tamanho da amostra
n=5
#Valor de a
a=N/n
#Seleção dos elementos da amostra
sam=S.SY(N,a)
#Amostra selecionada
amostra=U[sam,]
#Estimador HT para a média de idade
E.SY(N,a,amostra$idade)[1,2]/N


##########################################################33

nomes=c("Fulana", "Beltrano", "Cicrana", "Elano", "Eneana", "Eteceterano",
        "Deltrana", "Estatisticando", "Alfa", "Ômega")
idade=c(27,28,35,19,22,48,35,40,28,33)
peso=c(79.5,80.2,69.0,73.0,75.5,80.1,65,79,75,74)
sexo=as.factor(c("F","M","F","M","F","M","F","M","F","M"))
U=data.frame(nomes,idade,peso,sexo)
#Vetor indicador dos tamanhos dos estratos
Nh=as.numeric(table(sexo))
#Tamanho da

#Tamanho da amostra
nh=c(3,3)
#Seleção dos elementos da amostra
sam=S.STSI(U$sexo,Nh,nh)
#Amostra selecionada
amostra=U[sam,]
#Estimador HT para a média de idade sob amostragem estratificada
E.STSI(amostra$sexo,Nh,nh,amostra$idade)[, , 2][1,3]/sum(Nh)
