x=rnorm(100)
boot_strap<-function(n_sample,smp)
{
    big_sample=array(0,dim=c(n_sample,length(smp)))
    for(i in 1:n_sample)
    {
        big_sample[i,]=sample(smp,replace=TRUE)
    }
    big_sample
}

boot_strap_stock_path<-function(start,n_sample,smp)
{
    stock_path=array(0,dim=c(n_sample,length(smp)+1))
    table=boot_strap(n_sample,smp)
    for(i in 1:n_sample)
    {
        stock_path[i,1]=start
        for(j in 2:(length(smp)+1))
        {
            stock_path[i,j]=stock_path[i,j-1]*table[i,j-1]
        }
    }
    stock_path
}
