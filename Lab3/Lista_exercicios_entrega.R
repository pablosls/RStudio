#exercicio 1

table(sex)
table(jobcat)
table(sexrace)

barplot(prop.table(table(Bank$sex)) * 100, col=c("blue", "red"))
title("Frequencia", xlab="sexo", ylab="%")

barplot(prop.table(table(Bank$jobcat)) * 100, col=c("blue", "red"))
title("Frequencia", xlab="sexo", ylab="%")

barplot(prop.table(table(Bank$sexrace)) * 100, col=c("blue", "red"))
title("Frequencia", xlab="sexo", ylab="%")

is.numeric(age)
is.numeric(time)
is.numeric(salnow)

summary(age)
sd(age)

summary(time)
sd(time)

summary(salnow)
sd(salnow)

hist(age)
hist(time)
hist(salnow)

# Exercicio 2

is.numeric(sex)
sex<-as.numeric(sex)
is.numeric(sex)

boxplot(Bank$salnow~Bank$sex)


# Exercicio 3

# 3) Faça um tabela cruzada usando a função Crosstable das variáveis sex e minotity.

library(gmodels)

CrossTable(Bank$sex, Bank$minority, digits = 3, chisq = TRUE)


# Exercicio 4
# Faça uma seleção de casos usando 2 variáveis (sex e jobcat). Selecionando
# somente as pessoas do sexo Males e profissão clerical.

selecionar <- Bank [Bank$sex == "Males" & Bank$jobcat == "Clerical" ,]
selecionar







