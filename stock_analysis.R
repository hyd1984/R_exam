a=read.table("2002.dat")
a=a$V1
b=rnorm(length(a),0,0)
for(i in 1:(length(a)-1))
{
b[i]=(a[i+1]-a[i])/a[i]
}
