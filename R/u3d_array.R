u3d.array = function(x,xbase=NULL,ybase=NULL,zbase =NULL,Level = NULL,
                     Show = T,add = F,#contour = list(side = 'zmax'),
                     Drop = F){
  Name = deparse(substitute(x))
  Dim = length(dim(x))
  if(Dim ==3){
    if(is.null(Level)) Level = seq(quantile(x,.2),quantile(x,.8),length.out = 3)
    if(is.null(xbase)){
      isosurf3D(x, colvar = x, level = Level,
                   col = c("red", "blue", "yellow"),
                   clab = Name, alpha = 0.4, plot = Show)
    }else{
      isosurf3D(xbase, ybase, zbase, colvar = x, level = Level,
                   col = c("red", "blue", "yellow"),
                   clab = Name, alpha = 0.4, plot = Show)
    }
  }else if(Dim==2){
    if(is.null(xbase)){
      persp3D(z=M,plot = F)
    }else{
      persp3D(xbase,ybase,z=M,plot = F)
    }
  }else{
    #plot for the higher dim
    message('Hyper APL slicing, not developed yet')
  }
  #if(isTRUE(Show)) plot(new = FALSE)#, lighting = F)
}

u3d.matrix =function(x,xbase=NULL,ybase=NULL,Drop = F,Show = T){
  if(is.null(xbase)){
    persp3D(z=x,plot = Show)
  }else{
    persp3D(xbase,ybase,x,plot = Show)
    #return()
  }
  #if(isTRUE(Show)) plot(new = FALSE)#, lighting = F)
}
