DF <- data.frame(x=rnorm(10),y=rnorm(10),dx=runif(10),dy=runif(10))
> plot(NULL, type = "n", xlim=c(-3,3),ylim=c(-3,3))
> arrows(DF[,1], DF[,2], DF[,1] + DF[,3], DF[,2] + DF[,4])
> DF
