source("irr.R")
cost_aver<-function(price,cost)
{
    stock=0.0
    for(i in 1:(length(price)-1))
    {
    #temp=stock
    stock=stock+((-cost)/price[i])
    }
    val=stock*price[length(price)]
    money=c(rep(cost,length(price)-1),val)
    irr(money)
}
x=c(4.64,4.38,4.56,4.25,3.81,3.19,2.99,3.6,4.7,4.41,4.34,4.69,5.26,4.54,5.38,7.47,7.39,6.31,7.07,6.48,7.07,6.96,5.05,5.8,5.06)
#print(((1+cost_aver(x,-100.0))^12)-1)