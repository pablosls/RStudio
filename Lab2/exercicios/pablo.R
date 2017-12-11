a <- matrix(data=1:12, nrow = 4, ncol = 3, byrow = TRUE)


a
a[2,3]

a[2,3] <- 66


b <- rbind(c("edmar","Priscila"), c(30,34),c("MBA","Doutorando"))
b


c<-list(cbind(nome=c("edmar","priscila"), idade=c(30,34), escolaridadde=c("MBA", "Doutorando")))
c


nome <- c("Edmar", "Priscila")
nome

idade <-c(30,31)
idade 

salario <- c(1000, 2000)
salario 

cadastral <- data.frame(nome, idade, salario)
cadastral

filhos <- c(0,1)
filhos

cadastral$filhos <- c(filhos)
cadastral

salario_novo <- c(salario * 1.06)
salario_novo

cadastral$salario_novo <- c(salario_novo)
cadastral

names(cadastral)
levels(cadastral$nome)

write.csv(cadastral, file="file.csv")
