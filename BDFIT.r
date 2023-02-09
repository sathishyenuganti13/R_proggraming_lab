x <- c(0,1,2,3,4,5,6,7)
n <- max(x)
f <- c(7,6,19,35,30,23,7,1)
fx <- f*x
sf <- sum(f)
sfx <- sum(fx)
p <- (sfx/sf)/n
px <- dbinom(0:n,size=n,prob=p)
px <- round(px,digits = 5)
fe <- px*sf
result <- c()
for( i in 0:n+1){
  result<- c(result,((f[i]-fe[i])^2)/fe[i])
}
mydata <- data.frame(x,f,fx,px,fe,result)
print(mydata)
result <- sum(result)
tablevalue<- qchisq(0.95,df=n-1)
print(paste("X2cal val= ",result))
print(paste("X2tab value=",tablevalue))
if (result <= tablevalue){
  print("X2cal < X2tab value ")
  print(paste("Ho is accepted"))
}else {
  print("X2cal > X2tab value ")
  print(paste("Ho is rejected"))
}