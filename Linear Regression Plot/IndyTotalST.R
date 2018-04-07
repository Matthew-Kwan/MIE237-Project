rm(list =ls());
indy <- read.table("Indy-Total-ST.txt", header = TRUE);
attach(indy);
plot(Score, Time, main="Industrial Engineers: Score vs Time", xlab="Score", ylab="Time");
Fit<-lm(Score~Time);
summary(Fit);
abline(Fit);
Fit$residuals;
rstandard(Fit);
library(MASS);
studres(Fit);
Fit$fitted.values;
qqnorm(rstandard(Fit));
qqlin(rstandard(Fit));
plot (rstandard(Fit)~Fit$fitted.values);
abline(0,0);



