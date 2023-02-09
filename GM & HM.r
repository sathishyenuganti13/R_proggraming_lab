mylength<-function(data){
  length=0
  for (i in data){
    length=length+1
  }
  return<-length
}
myHM <- function(data){
  sum=0
  n<- mylength(data)
  for (i in data){
    sum=sum+(1/i)
  }
  result<- sum/n
  return <- 1/result
}
myGM <- function(data){
  sum=1
  n=mylength(data)
  for (i in data){
    sum=sum*i
  }
  sum=(sum)^(1/n)
  return<- sum
}
mysum<- function(data){
  sum=0
  for (i in data){
    sum=sum+i
  }
  return<-sum
}
mymean<-function(data){
  mean=mysum(data)/mylength(data)
  return<- mean
}
myMD <- function(data){
  sum=0
  n<- mylength(data)
  mean<- mymean(data)
  for (i in data){
    sum=sum+abs(mean-i)
  }
  return <- sum/n
}
mySD <- function(data){
  sum=0
  n<- mylength(data)
  mean<- mymean(data)
  for (i in data){
    sum=sum+((mean-i)^2/n)
  }
  return <- sum^0.5
}
data<- scan()
print(paste( "GM=", myGM(data)))
print(myHM(data))

