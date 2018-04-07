rm(list =ls());
total <- read.table("Total Score and Time.txt", header = TRUE);
attach(total);
plot(Time, Score main="Total Time vs Score", xlab="Time", ylab="Score");
Fit<-lm(Score ~ Time);
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
plot (rstandard(Fit), main = 'Standarized residuals vs Observation number')
abline(0,0);
plot (rstandard(Fit)~Score, main = 'Standarized residuals vs Time');
abline(0,0);


