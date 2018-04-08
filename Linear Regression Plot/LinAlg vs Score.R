rm(list =ls());
linalg <- read.table("LinAlgvScore.txt", header = TRUE);
attach(linalg);
plot(Mark, Score, main="Linear Algebra Mark vs Score", xlab="Linear Algebra Mark", ylab="Score");
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



