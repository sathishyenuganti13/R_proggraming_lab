x=c(40,30,40,45,55,30)
y=c(50,55,45,55,69,40)

t=ks.test(x,y,paired=TRUE)
print(t)
if(t$p.value > 0.05){
  print("accepted")
}else
  print("rejected")