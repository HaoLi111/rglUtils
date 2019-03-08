#p3d.data.frame
u3d.data.frame = function(x,asp=1:3){
  name = NULL
  for(k in 1:3){
    if(is.character(asp[k])){
      name[k]=asp[k]
    }else{
      name[k]=colnames(x)[asp[k]]
    }
  }
  x = x[,name]
  scatter3D(x[,1],x[,2],x[,3],xlab=name[1],
                          ylab=name[2],zlab=name[3])#,highlight.3d = T)

}
