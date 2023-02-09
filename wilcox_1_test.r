x=c(119,120,125,122,118,117,126,114,115,123,121,120,124,127,126)


t=wilcox.test(x,mu=120,alternative="two.sided")
print(t)
if(t$p.value>0.05){
  print("accepted")
}else{
  print("rejected")
}