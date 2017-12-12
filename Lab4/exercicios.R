

merge(Apend_A, Apend_B, by=c("id"))

merge (Uniao_1, uniao_2, by="id", all.y = TRUE)


merge (Uniao_1, uniao_2, by=c("id","cidade"), all.y = TRUE)


subset(Banco, estudo >= 10 && catemp >= 3)


Banco[order(Banco$salário, decreasing = TRUE),]
boxplot(Banco$salário)

a <- replace(Banco$salário, Banco$salário >= 100000, 60000)
a


summary(a)


boxplot(Banco$salário ~ Banco$sexo, 
        main = "BoxPlot por idade e sexo", 
        xlab = "sexo", ylab = "idade", 
        col=c("blue", "red"))



library(sqldf)

selecionando <- sqldf("select * from Banco where sexo = 1")
selecionando


selecionando2 <- sqldf("select Uniao_1.id,Uniao_1.sexo  from Uniao_1 join uniao_2 on Uniao_1.id = uniao_2.id")
selecionando2

selecionando3 <- sqldf("select Uniao_1.id,Uniao_1.sexo from Uniao_1 left join uniao_2 on Uniao_1.id = uniao_2.id")
selecionando3

selecionando4 <- sqldf("select Uniao_1.id,Uniao_1.sexo from Uniao_1 left outer join uniao_2 on Uniao_1.id = uniao_2.id")
selecionando4

library(tcltk)



valor <- tkmessageBox(title = "Arquivo", message = "Olá Mundo", icon="info", type="ok")
valor

attach(Banco)
qqnorm(salário);qqline(salário, col="blue")
# verificar se a variavel tem tendencia 



library("rvest")
pagina <- html("http://www.ipeadata.gov.br/ExibeSerie.aspx?serid=40940&module=M")
dados <-pagina %>%
  html_nodes(".dxgvDataRow")%>%
  html_text()
dados <-gsub("rnttt","", dados)
dados <-gsub("[[:punct:]]","",dados)
data<-substr(dados,1,11)
risco<-substr(dados,12,100)
risco<-gsub("[[:punct:]]","",risco)
tabela <-data.frame(data,risco,stringsAsFactors = FALSE)
tabela


x <- 0.3
if( x < 0.2)
{
  x <- x+ 1
}else{
  x <- x-1
}
x



x <- seq(10,100,by=5)
x
z <- mean(x)
z

y <- ifelse(x>=z, "Aprovado", "reprovado")
y



x<-2
fun <- function(x)
{
  3*x+1
}
fun(x) + 10

show(Apend_A)


x <- Apend_A$Idade
x

Apend_A$idadeMulti <- fun(x)
Apend_A





