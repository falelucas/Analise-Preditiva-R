library(readxl)
library(MASS)
library(car)
library(pscl)
birthweight <- read_excel("dados/birthweight.xlsx")

View(birthweight)
attach(birthweight)

chart.Correlation(birthweight)

ajuste = glm(lowbwt ~ headcirumference	+length	+Birthweight+	Gestation+	smoker+	motherage+	mnocig+	mheight+	mppwt+	fage+	fedyrs+	fnocig	+fheight)
summary(ajuste)

stepAIC(ajuste, direction = "both")

ajuste2 = glm(lowbwt ~ length + Birthweight + mnocig + mheight + mppwt + fnocig)
summary(ajuste2)

exp(cbind(coef(ajuste2), confint.default(ajuste2)))



pchisq(ajuste2$deviance, ajuste2$df.residual, lower.tail = F) #Teste Chi-quadrado do Deviance
pchisq(ajuste2$null.deviance - ajuste2$deviance, ajuste2$df.null - ajuste$df.residual, lower.tail = F) #Teste Chi-quadrado da Regressão
vif(ajuste2)
pR2(ajuste2)


par(mfrow=c(2,2))
plot(ajuste2)


coef2 <- data.frame(coef(ajuste2))
p_hat <- (exp(coef2[1,] + coef2[2,]*20 + coef2[3,] + coef2[4,] +coef2[5,] + coef2[6,]*10 ))/(1+exp(coef2[1,] + coef2[2,]*20 + coef2[3,] + coef2[4,] + coef2[5,] + coef2[6,]*10 ))
p_hat


predict.glm(ajuste2,data.frame(length=14, Birthweight=7.3, mnocig=12, mheight=60, mppwt=105, fnocig=25))