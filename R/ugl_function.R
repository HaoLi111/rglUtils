#f1 = function(x) x^2
#f2 = function(x,y) x^2+y^2

#formals(f1)
#formals(f2)

ugl.function = function(x,asp='2',
                       xbase=seq(from=-3,to=3,length.out = 30),
                       ybase=seq(from=-3,to=3,length.out = 30),
                       zbase=seq(from=-3,to=3,length.out = 30),
                       Length = NULL){
  #check no of formal args
  if(is.null(Length)) Length = length(formals(x))
  if(Length == 3 ){
    Lx = length(xbase);Ly =length(ybase);Lz = length(zbase)
    M = numeric(length(xbase)*length(ybase)*length(zbase))
    dim(M) = c(Lx,Ly,Lz)
    for(i in seq_along(xbase)) for(j in seq_along(ybase)) for(k in seq_along(zbase)) M[i,j,k] = x(xbase[i],ybase[j],zbase[k])
    ugl(M,xbase,ybase,zbase)
  }else if(Length == 2){
    M= matrix(NA,length(xbase),length(ybase))
    for(i in seq_along(xbase)) for(j in seq_along(ybase)) M[i,j] = x(xbase[i],ybase[j])
    ugl(x=M,xbase,ybase)
  }else if(asp == '3'){

  }
}
