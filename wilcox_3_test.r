x=c(2.1,4,6.3,5.4,4.8,3.7,6.1,3.3)
y=c(4.1,0.6,3.1,2.5,4.0,6.2,1.6,2.2,1.9,5.4)

t=wilcox.test(x,y,alternative="two.sided")
print(t)
if(t$p.value>0.05){
  print("accepted")
}else{
  prit("rejected")
}