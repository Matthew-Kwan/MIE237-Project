rm(list =ls());
total <- read.table("Total Score and Time.txt", header = TRUE);
attach(total);
plot(Score, Time, main="Industrial and Mechanical Engineers: Score vs Time", xlab="Score", ylab="Time");
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

