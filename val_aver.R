source("irr.R")
val_aver<-function(price,seg)
{
    total_price=seg
    hold=total_price/price[1]
    buy=hold
    input=rep(0,length(price))
    input[1]=-100
    
    for(i in 2:(length(price)-1))
    {
    total_price=total_price+seg
    buy=total_price/price[i]-hold
    input[i]=-(buy*price[i])
    hold=hold+buy
    }
    input[length(input)]=price[length(price)]*hold
    irr(input)
}
x=c(4.64,4.38,4.56,4.25,3.81,3.19,2.99,3.6,4.7,4.41,4.34,4.69,5.26,4.54,5.38,7.47,7.39,6.31,7.07,6.48,7.07,6.96,5.05,5.8,5.06)
a=val_aver(x,100)
