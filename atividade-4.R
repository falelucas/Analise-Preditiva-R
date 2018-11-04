library(readxl)
BEBIDA <- read_excel("dados/BEBIDA.xlsx")
View(BEBIDA)


tsBebida= ts(BEBIDA,frequency=12,start=c(1985,1))
plot(tsBebida)

boxplot(tsBebida~cycle(tsBebida))

plot(log(tsBebida))

acf(log(tsBebida))

pacf(log(tsBebida))

plot(diff(log(tsBebida)))

acf(diff(log(tsBebida)))

pacf(diff(log(tsBebida)))



library(tseries)
adf.test(diff(log(tsBebida)), alternative="stationary", k=0)



ajuste <- arima(log(tsBebida), c(0, 1, 1), seasonal = list(order = c(0, 1, 1), period = 12))
pred <- predict(ajuste, n.ahead = 2*12)
ts.plot(tsBebida, exp(pred$pred), lty = c(1,3))
ts.plot(tsBebida, exp(pred$pred), log = "y", lty = c(1,3))