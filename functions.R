mysum<- function(data){
  sum=0
  for (i in data){
    sum=sum+i 
  }
  return<-sum
}
mylength<-function(data){
  length=0
  for (i in data){
    length=length+1
  }
  return<-length
}
mymean<-function(data){
  mean=mysum(data)/mylength(data)
  return<- mean
}
mysort<-function(d){
  n<- mylength(d)
  for (i in 1:(n-1)){
    for(j in 1:(n-1)){
      
      if (d[j]>d[j+1]){
        t=d[j+1]
        d[j+1]=d[j]
        d[j]=t
   }
  }
 }
  return<-d
}

mymode<-function(d){
  count=0
  index=0
  count1=0
  n<-mylength(d)
  for (i in 1:(n-1)){
    for (j in 1:(n-1)){
      if (d[i]==d[j])
        {
        count1=count1+1
        }
    }
    if(count1>count){
      count=count1
      index=i
    }
    count1=0
  }
  return <- d[index]
}
mymedian<-function(d){
  d=mysort(d)
  n<-mylength(d)
  if(n==0){
    print("no data ")
    return
  } else if(n%%2!=0){
    return<- d[(n+1)/2]
  }
  else{
    return<- ((d[n/2]+d[(n/2)+1])/2)
  }
}
d<-scan()
print(mymode(d))

