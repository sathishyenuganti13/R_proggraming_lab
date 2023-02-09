 l <- c(190,243,197)
 c<- c(82,44,44)
 t <- c(23,78,34)
 e <- c(5,12,8)
 rs <- c(sum(l),sum(c),sum(t),sum(e))
 cs <- c()
 for( i in 0:3){
   cs <- c(cs,(l[i]+c[i]+e[i]+t[i]))
 }
 total<- sum(cs)
 cs <- c(cs,total)
mydata <- data.frame(l,c,t)
l1 <- c()
for ( i in 1:3){
 # l1[i]=1
}