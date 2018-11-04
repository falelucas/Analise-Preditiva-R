library(readxl)
Lobos <- read_excel("dados/Lobos.xlsx")
View(Lobos)

Lobos$GrupoDesc <- factor(Lobos$Grupo, levels = c(1, 2, 3, 4),labels = c("6 machos das Montanhas Rochosas", "3 fêmeas das Montanhas Rochosas", "10 machos do Ártico", "6 fêmeas do Ártico"))
Lobos <- Lobos[,-10]

View(Lobos)

attach(Lobos)
require(MASS)
library(klaR)

ajuste <- lda(GrupoDesc ~ X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9)
table(GrupoDesc, Predito = predict(ajuste, Lobos[,1:9])$class)
mean(GrupoDesc == predict(ajuste, Lobos[,1:9])$class)

partimat(GrupoDesc ~ X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9, method="lda")

plot(ajuste, dimen = 1, type = "b")



valoresPredicao <-  (data.frame("X1"=125,"X2"=104,"X3"=145,"X4"=81.1,"X5"=33.2,"X6"=68.2,"X7"=49.0,"X8"=43.3,"X9"=18.2))
Predito = predict(ajuste, valoresPredicao)$class
Predito