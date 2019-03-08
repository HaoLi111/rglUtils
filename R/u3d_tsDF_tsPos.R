#u3d.tsDf
#u3d.tsPos

u3d.tsDf <-function(x,include.t = 1,asp = 'all'){
  x = as.data.frame(x)
  if(!include.t==0) {
    tRef = x[,include.t]
    x = x[,(-include.t)]
  }else{
    tRef = seq(0,1,length.out = nrow(x))
  }
  if(!is.null(colnames(x))){
    ylab = colnames(x)
  }else{
    ylab = seq(0,1,length.out = ncol(x))
  }
  if(asp[1]=='all'){
    ribbon3D(z=x,xlab='t',ylab =ylab)
  }else{
    ribbon3D(z=x[,asp,drop = F],xlab='t',ylab =ylab)
  }
  #NextMethod('u3d')
}

u3d.tsPos  <- function(x,asp = 1:3,include.t =1 ,Next=F) {
  if(!length(asp==3)) asp = 1:3
  x = as.data.frame(x)
  if(include.t==0){
    asp = 1:3
    tRef = seq(0,1,length.out = nrow(x))
  }else{
    tRef = x[,include.t]
    x = x[,(-include.t)]
  }
  scatter3D(x[,(asp[1])],x[,(asp[2])],x[,(asp[3])],colvar = tRef)
  if(isTRUE(Next)) NextMethod('u3d')
}
