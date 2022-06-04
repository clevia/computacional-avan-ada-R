runif.GHE <- function(n, seed = 89) {
  
  ## Inicialmente vamos definir os valores de a e m
  a <- 7^5
  m <- 2^31-1  # P/ computadores de 32 bits
  #m <- 2^63-25 # P/ computadores de 64 bits
  
  xn <- seed
  rand <- vector(mode="numeric", length=n)
  for (i in 1:n) {
    xn <- (a*xn) %% m
    rand[i] <- xn
  }
  
  return(rand/m)
  
}
#usando a função system.time para calcular o tempo de execução da função runif.GHE
#para 1 milhão de valores
system.time(runif.GHE(1000000))
#usando a função system.time para calcular o tempo de execução da função runif padrão
#para 1 milhão de valores
system.time(runif(1000000))
