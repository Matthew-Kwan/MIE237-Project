rm(list =ls());
mech <- read.table("Mech-Total-ST.txt", header = TRUE);
attach(mech);
plot(Score, Time, main="Mechanical Engineers: Score vs Time", xlab="Score", ylab="Time");
Fit<-lm(Score~Time);
summary(Fit);
abline(Fit);
Fit$residuals;
rstandard(Fit);
library(MASS);
studres(Fit);
Fit$fitted.values;
qqnorm(rstandard(Fit));
qqline(rstandard(Fit));
plot (rstandard(Fit)~Fit$fitted.values, main='Standarized Residuals vs Fitted Values');
abline(0,0);
plot (rstandard(Fit), main = 'standarized residuals vs observation number')
abline(0,0);
plot (rstandard(Fit)~Score, main = 'standarized residuals vs score');
abline(0,0);


