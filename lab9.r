x1 <- c(8260,8130,8350,8070,8340)

n1= length(x1)

m1 <- sum (x1) / n1

print(" Enter level of significane value : ")
alpha <- scan()

print(" Enter mu value: ")
mu <- scan()

d1<- c()

for( i in 1:n1){
  d1 <- c(d1,((m1-x1[i])^2)/n1)
  s1 <- c(d1,((m2-x1[i])^2))
}



print(paste("tcal = ",tcal))

tv <- qt(1-alpha/2,df=n1-1)
print(paste("tab value = ",tv))

if(tcal > tv){
  print(" Ho rejected. ")
}else
{
  print(" Ho accepted.")
}