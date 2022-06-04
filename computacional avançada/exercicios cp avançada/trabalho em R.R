cidades<-c("Juarez Távora", "Serra Redonda", "Alagoa Grande")
covid<- c("Casos Confirmados","Casos Recuperados","Mortes")
corona<- matrix(c(45,18,0,63,23,0,130,21, 5), ncol=3, dimnames = list(covid,cidades))
corona
bp<-barplot(corona, beside = TRUE, col=c("orange","darkgreen","red"), 
main = "Registros de Covid-19 nas cidades de Juarez Távora, Serra Redonda e alagoa Grande, 
de acordo com os boletins epidemiológicos divulgados em 06/06/2020." )
legend(x=1,y=110,c("Confirmados","Recuperados","Mortes"),
       fill = c("orange","darkgreen","red"),cex=1, bty = "n")


