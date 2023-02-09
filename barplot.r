v<-matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14),nrow=7,ncol=2,byrow=TRUE)
h<-c("jan","feb","mar","apr","may","jun")
colors<-c("blue","green","skyblue")
barplot(v,xlab="month",ylab="value",main="bargraph",col=colors)
