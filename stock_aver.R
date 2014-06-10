source("irr.R")
stock_aver<-function(price,stock)
{
    hold=0
    input=0
    for(i in 1:(length(price)-1))
    {
        hold=hold+stock
        input[i]=-(stock*price[i])
    }
    val=hold*price[length(price)]
    input[length(price)]=val
    irr(input)
}
x=c(4.64,4.38,4.56,4.25,3.81,3.19,2.99,3.60,4.7,4.41,4.34,4.69,5.26,4.54,5.38,7.47,7.39,6.31,7.07,6.48,7.07,6.96,5.05,5.8,5.06)
stock_aver(x,22)