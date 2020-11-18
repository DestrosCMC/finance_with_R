library(quantmod)
library(PerformanceAnalytics)
library(zoo)

data_env <- new.env()
getSymbols(c("SPY", "QQQ"), env = data_env, auto.assign = TRUE, 
           from = "2020-06-01", to = Sys.Date())


spy_returns <- CalculateReturns(data_env$SPY$SPY.Adjusted)
qqq_returns <- CalculateReturns(data_env$QQQ$QQQ.Adjusted)

plot.zoo(spy_returns)
abline(h=0, col = 'red')
#plot.zoo(qqq_returns)
#abline(h= 0, col = 'yellow')


#spy_returns <- CalculateReturns(SPY$SPY.Adjusted)
#spy_returns <- spy_returns[-1]
#spy_returns["2020-01-05"]
#plot.zoo(spy_returns)
