rm(list =ls());
multi <- read.table("ScorevTimeLinAlg.txt", header = TRUE);
attach(multi);
myvars=c("Time","Score","Mark");
multi2=multi[myvars];
plot(multi2);
Fit<-lm(Score ~ Time + Mark, data=multi);
summary(Fit);
abline(Fit);
cor.test(Score,Time);
Fit$residuals;
rstandard(Fit);
library(MASS);
studres(Fit);
Fit$fitted.values;
qqnorm(rstandard(Fit));
qqline(rstandard(Fit));
plot (rstandard(Fit)~Fit$fitted.values, main='Standarized Residuals vs Fitted Values');
abline(0,0);
plot (rstandard(Fit), main = 'Standarized residuals vs Observation number')
abline(0,0);
plot (rstandard(Fit)~Time, main = 'Standarized residuals vs Time');
abline(0,0);


