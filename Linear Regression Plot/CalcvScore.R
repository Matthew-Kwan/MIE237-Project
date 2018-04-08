rm(list =ls());
calc <- read.table("CalcvScore.txt", header = TRUE);
attach(calc);
plot(Mark, Score, main="Calculus Mark vs Score", xlab="Calculus Mark", ylab="Score");
Fit<-lm(Score ~ Mark);
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
plot (rstandard(Fit)~Score, main = 'Standarized residuals vs Time');
abline(0,0);



