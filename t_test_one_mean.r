#one mean- SST
data<-c(63,63,66,67,68,69,70,70,71,71)
# data<-c(45,47,50,52,48,47,49,53,51)
#data<-c(12.1,11.9,12.4,12.3,11.9,15.4,13.9,12.8)
print("Ënter the mu value to be tested:")
mu<-scan()
n<-length(data)
print("enter the level of significance")
alpha<-scan()
std<-sd(data)
print("Standard deviation is:")
print(std)
t<-t.test(data,mu=mu)

print("Table value for one-tailed test:")
tablevalue<-qt(1-alpha, df=n-1)
print(round(tablevalue,digits=3))


print(" calc value :")
print(t$statistic)

if(t$statistic > tablevalue){
 print(" ho is accepted")
}else
  print("ho is rejected")

