x=c(2.1,4,6.3,5.3)
y=c(4.1,0.6,3.1,4.1)

t=wilcox.test(x,y,paired=T,alternative="two.sided")
print(t)
if(t$p.value>0.05){
  print("accepted")
}else{
  prit("rejected")
}