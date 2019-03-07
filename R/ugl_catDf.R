ugl.catDf = function(x,...){
  catDf = as.data.frame(x)
  catIndex = is.character(x[1,])[1]
  num=is.numeric(x[1,])
  x = x[,num]
    if(!is.null(colnames(x))){
      y = colnames(x)
    }else{
      y = seq(0,1,length.out = ncol(x))
    }
  hist3Drgl(x=catIndex,
            y=y,
            z=as.matrix(x),
            xlab ='Category Index',ylab = 'Category Index 2')
}

