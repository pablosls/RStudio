attach(Banco)
data_atual <- as.Date("2017-12-03")
data_atual


data_atual1 <- Sys.Date()
data_atual1



Banco$data_atual1 <- data_atual1

idade <- difftime(data_atual1, datanasc) / 362.25
round(idade)

is.numeric(idade)
idade <- as.numeric(idade)
is.numeric(idade)

faixa_etaria <- cut(idade, breaks = c(46,50,70,80,89), right = T)
faixa_etaria

Banco$faixa_etaria <- faixa_etaria

#Banco$idade <-as.numeric(round(idade))

Banco

dim(Banco)

View(Banco)


barplot(prop.table(Banco_1$sexo)) * 100, 
col=c("blue", "red"))
title("Frequencia", xlab="sexo", ylab="%")

