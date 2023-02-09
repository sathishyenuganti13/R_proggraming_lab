x <- c(0,1,2,3,4,5,6,7,8)
n <- max(x)
f <- c(103,143,98,42,8,4,2,0,0)
fx <- f*x
sf <- sum(f)
sfx <- sum(fx)
p <- (sfx/sf)
npx <- dpois(0:n,lambda = p)
npx <- round(npx,digits = 5)
fe <- npx*sf
result <- c()
for( i in 0:n+1){
  result<- c(result,((f[i]-fe[i])^2)/fe[i])
}
print(result)
result <- sum(result)
tablevalue<- qchisq(0.95,df=n)
mydata <- data.frame(x,f,fx,npx,fe)
print(mydata)
print(result)
print(tablevalue)
if (result <= tablevalue){
  print("X2cal< x2tab value ")
  print(paste("Ho is accepted"))
}else {
  print("X2cal > x2tab value ")
  print(paste("Ho is rejected"))
}