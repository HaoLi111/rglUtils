library(rMathModeling)
?dynam_record
dynam_runif=dynam_record(init = c(1,1),index=1:100,Fupdate=(function(x) x+rnorm(2, mean=0, sd=1)))
dynam_runif = as.data.frame(dynam_runif)
class(dynam_runif) = c('tsDf','data.frame')
ugl(dynam_runif)


state = list(dt = .005,Sigma = 10,b=8/3,r = 18)
system.time({
  dynam_l=dynam_record(init = c(6.7,6.7,17),index=1:1e4,
                       Fupdate=dynam_update_Lorentz_param,#make sure no bracket here
                       param = state)#take in optional param

})
nrow(dynam_l)
colnames(dynam_l) = c('t','x1','x2','x3')
dynam_l = as.data.frame(dynam_l)

class(dynam_l) = c('tsPos','tsDf','data.frame')
ugl(dynam_l)

ugl.tsDf(dynam_l,asp = 1:2)
#ugl.tsDf(dynam_l,asp = 2:3)
ugl_R3()

CatDf = data.frame(category = c('green','red','blue'),
                   pen = c(1,3,2),
                   eraser = c(2,3,1),
                   pencil = c(0,0,1))
class(CatDf) = c('catDf','data.frame')
ugl(CatDf)
