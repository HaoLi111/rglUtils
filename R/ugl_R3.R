ugl_R3<-function(g = c('x','y','z'),
                a = c('x','y','z')){
  for(i in g){
    rgl::grid3d(i)
  }
  for(j in a){
    rgl::axis3d(j)
  }
}#Draw linear Cartesian (R^3) boxes
