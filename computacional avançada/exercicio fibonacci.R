#CLEVIA BENTO DE OLIVEIRA

#EXERC�CIO

#vetor com os 15 primeiros valores da sequ�ncia de Fibonacci.

#sabe-se que a f�rmula da sequ�ncia de Fibonacci � escrita da seguinte forma:
# F(n) = F(n-1)+F(n-2), sendo F(1) = 1 e F(2) = 1.


fibonacci<- c(1,1)

for (i in 3:15) {
  fibonacci[i] = fibonacci[i-1]+fibonacci[i-2]
}
print(fibonacci)

#fun��o para mostrar os n primeiros valores da sequ�ncia de Fibonacci.

fibonacci <- function(n) {
  f<-c(1,1)
  for (i in 3:n) {
    f[i]= f[i-1]+f[i-2]
    
  }
  return(f)
}