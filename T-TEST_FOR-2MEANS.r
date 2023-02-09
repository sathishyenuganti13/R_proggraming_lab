x1 <- c(59,68,44,71,63,46,69,54,48)
x2 <- c(50,36,62,52,70,41)

n1= length(x1)
n2 = length(x2)

m1 <- sum (x1) / n1
m2 <- sum (x2) / n2

print(" Enter level of significane value : ")
alpha <- scan()

d1<- c()
d2<- c()
s1 <- c()
s2 <- c()

for( i in 1:n1){
  d1 <- c(d1,((m1-x1[i])^2)/n1)
  s1 <- c(s1,((m1-x1[i])^2))
}

for (i in 1:n2){
  d2 < c(d2,((m2-x2[i])^2)/n2)
  s2 <- c(s2,((m2-x2[i])^2))
}

print(sum(s1))

s <- sqrt(((sum(s1)+sum(s2))/(n1+n2-2)))
print(s)

tcal <- (m1-m2)/(s*(sqrt(1/n1+1/n2)))

print(paste("tcal = ",tcal))

tv <- qt(1-alpha/2,df=n1+n2-2)
print(paste("tab value = ",tv))

if(tcal > tv){
  print(" Ho rejected. ")
}else
{
  print(" Ho accepted.")
}



