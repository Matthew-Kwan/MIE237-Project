rm(list =ls());
mech <- read.table("Mech-Total-ST.txt", header = TRUE);
attach(mech);
plot(Score, Time, main="Mechanical Engineers: Score vs Time", xlab="Score", ylab="Time");
Fit<-lm(Score~Time);
summary(Fit);
abline(Fit);


