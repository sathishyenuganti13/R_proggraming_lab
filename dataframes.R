data <- data.frame(
  name =c("a","b","c","d","e","f"),
  ld=c(1:6),
  salary= c("10101","10102","10103","10104","10105","10106")
)
print((data))
data$name
data$ld
data$salary[c(1,3)]
data$age<-c(18,19,18,19,18,19)
data
result2<- data[c(1,2),]
result2
result<- data[c(2,4),c(1,3)]
result
data1<- data.frame(
  name=c("sa","su","ro","ne","ka","ta","sh"),
  ld=c(1:7),
  salary=c(1,2,3,4,5,6,7),
  age=c(18,18,18,18,18,18,18)
)
result1<-rbind(data,data1)
result1













