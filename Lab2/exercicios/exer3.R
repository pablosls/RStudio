attach(Banco_1)

mean(Banco_1)

round(mean(filhos, na.rm = TRUE))

by(Banco_1$idade, Banco_1$filhos, mean)



Banco_1

table(Situacao)
table(sexo)

library(gmodels)

CrossTable(Banco_1$sexo, Banco_1$Situacao, digits = 3, chisq = TRUE)


barplot(prop.table(table(Banco_1$sexo)) * 100, col=c("blue", "red"))
title("Frequencia", xlab="sexo", ylab="%")





           