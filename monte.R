#stock-price-path
gen_return<-function(mean,sd,length)
{
    val=rnorm(length,mean,sd)
}
stock_path<-function(start,mean,sd,length)
{
    a=numeric(length)
    a[1]=start
    for(i in 1:(length(a)-1))
    {
        val=rnorm(1,mean,sd)
        #print(val)
        a[i+1]=a[i]+a[i]*val
    }
    a
}
monte_carlo_stock_path<-function(n_sample,start,mean,sd,length)
{
     table<-array(0,dim=c(n_sample,length))
     for(i in 1:n_sample)
     {
         table[i,]=stock_path(start,mean,sd,length)
     }
     table
}
monte_carlo_return<-function(n_sample,mean,sd,length)
{
   table<-array(0,dim=c(n_sample,length))
   for(i in 1:n_sample)
   {
      table[i,]=gen_return(mean,sd,length)
   }
   table
}
#a=stock_path(100,0.0002753449,0.01813890,100)
