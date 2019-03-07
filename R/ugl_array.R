ugl.array = function(x,xbase=NULL,ybase=NULL,zbase =NULL,Level = NULL,
                     Show = T,add = F,#contour = list(side = 'zmax'),
                     Drop = F){
  Name = deparse(substitute(x))
  Dim = length(dim(x))
  if(Dim ==3){
    if(is.null(Level)) Level = seq(quantile(x,.2),quantile(x,.8),length.out = 3)
    if(is.null(xbase)){
      isosurf3Drgl(x, colvar = x, level = Level,
                col = c("red", "blue", "yellow"),
                clab = Name, alpha = 0.4, plot = Show)
    }else{
      isosurf3Drgl(xbase, ybase, zbase, colvar = x, level = Level,
              col = c("red", "blue", "yellow"),
              clab = Name, alpha = 0.4, plot = Show)
    }
  }else if(Dim==2){
    if(is.null(xbase)){
      persp3Drgl(z=M,plot = F)
    }else{
      persp3Drgl(xbase,ybase,z=M,plot = F)
    }
  }else{
    #plot for the higher dim
    message('Hyper APL slicing, not developed yet')
  }
  #if(isTRUE(Show)) plotrgl(new = FALSE)#, lighting = F)
}

ugl.matrix =function(x,xbase=NULL,ybase=NULL,Drop = F,Show = T){
  if(is.null(xbase)){
    persp3Drgl(z=x,plot = Show)
  }else{
    persp3Drgl(xbase,ybase,x,plot = Show)
    #return()
  }
  #if(isTRUE(Show)) plotrgl(new = FALSE)#, lighting = F)
}
