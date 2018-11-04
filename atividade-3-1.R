library(readxl)
library(psych)
library(GPArotation)

Home <- read_excel("dados/Home.xlsx")

View(Home)



parallel <- fa.parallel(Home, fm = 'pa', fa = 'fa')
fatores <- fa(Home, nfactors = 3, rotate = "oblimin",fm="pa")
cor(Home)
summary(Home)
fatores
print(fatores$loadings, cutoff = .3)

fa.diagram(fatores)
